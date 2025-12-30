import 'package:fpdart/fpdart.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:supabase_flutter/supabase_flutter.dart' as sb;
import '../../domain/entities/auth_user.dart';
import '../../domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final sb.SupabaseClient _supabase;
  final GoogleSignIn _googleSignIn;

  AuthRepositoryImpl({sb.SupabaseClient? supabase, GoogleSignIn? googleSignIn})
    : _supabase = supabase ?? sb.Supabase.instance.client,
      _googleSignIn = googleSignIn ?? GoogleSignIn();

  @override
  Stream<AuthUser?> get authStateChanges {
    return _supabase.auth.onAuthStateChange.map((event) {
      final user = event.session?.user;
      if (user == null) return null;
      return _mapSupabaseUserToAuthUser(user);
    });
  }

  @override
  Future<Either<String, AuthUser>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) return const Left('Google Sign-In aborted');

      final googleAuth = await googleUser.authentication;
      final accessToken = googleAuth.accessToken;
      final idToken = googleAuth.idToken;

      if (accessToken == null) {
        return const Left('No Access Token found.');
      }
      if (idToken == null) {
        return const Left('No ID Token found.');
      }

      final response = await _supabase.auth.signInWithIdToken(
        provider: sb.OAuthProvider.google,
        idToken: idToken,
        accessToken: accessToken,
      );

      final user = response.user;
      if (user == null) return const Left('Failed to sign in with Google');

      return Right(_mapSupabaseUserToAuthUser(user));
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, AuthUser>> signInWithApple() async {
    try {
      final credential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
      );

      final idToken = credential.identityToken;
      if (idToken == null) {
        return const Left('No Identity Token found.');
      }

      final response = await _supabase.auth.signInWithIdToken(
        provider: sb.OAuthProvider.apple,
        idToken: idToken,
        accessToken: credential.authorizationCode,
      );

      final user = response.user;
      if (user == null) return const Left('Failed to sign in with Apple');

      return Right(_mapSupabaseUserToAuthUser(user));
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<void> signOut() async {
    await _googleSignIn.signOut();
    await _supabase.auth.signOut();
  }

  @override
  Future<Either<String, bool>> verifyInviteCode({
    required String uid,
    required String inviteCode,
  }) async {
    // TODO: Implement actual invite code verification with Supabase RPC or Database
    await Future.delayed(const Duration(seconds: 1));

    if (inviteCode == 'EDU1234') {
      return const Right(true);
    } else {
      return const Left('Invalid invite code');
    }
  }

  AuthUser _mapSupabaseUserToAuthUser(sb.User user) {
    return AuthUser(
      uid: user.id,
      email: user.email ?? '',
      name: user.userMetadata?['full_name'] as String?,
      photoUrl: user.userMetadata?['avatar_url'] as String?,
      role: UserRole.none,
    );
  }
}
