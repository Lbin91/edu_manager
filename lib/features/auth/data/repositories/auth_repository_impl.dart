import 'package:firebase_auth/firebase_auth.dart';
import 'package:fpdart/fpdart.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import '../../domain/entities/auth_user.dart';
import '../../domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final FirebaseAuth _firebaseAuth;
  // final GoogleSignIn _googleSignIn;

  AuthRepositoryImpl({FirebaseAuth? firebaseAuth, GoogleSignIn? googleSignIn})
    : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance;
  // _googleSignIn = googleSignIn ?? GoogleSignIn(); // Commented out due to build error

  @override
  Stream<AuthUser?> get authStateChanges {
    return _firebaseAuth.authStateChanges().map((user) {
      if (user == null) return null;
      return _mapFirebaseUserToAuthUser(user);
    });
  }

  @override
  Future<Either<String, AuthUser>> signInWithGoogle() async {
    return const Left(
      'Google Sign-In temporarily disabled due to dependency issue.',
    );
    /* 
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) return const Left('Google Sign-In aborted');

      final GoogleSignInAuthentication googleAuth = googleUser.authentication;
      
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final UserCredential userCredential = await _firebaseAuth
          .signInWithCredential(credential);
      final user = userCredential.user;

      if (user == null) return const Left('Failed to sign in with Google');
      return Right(_mapFirebaseUserToAuthUser(user));
    } catch (e) {
      return Left(e.toString());
    }
    */
  }

  @override
  Future<Either<String, AuthUser>> signInWithApple() async {
    try {
      // Note: This requires capabilities setup in Xcode
      await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
      );

      return const Left('Apple Sign-In is not fully configured yet');
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<void> signOut() async {
    // await _googleSignIn.signOut();
    await _firebaseAuth.signOut();
  }

  @override
  Future<Either<String, bool>> verifyInviteCode({
    required String uid,
    required String inviteCode,
  }) async {
    await Future.delayed(const Duration(seconds: 1));

    if (inviteCode == 'EDU1234') {
      return const Right(true);
    } else {
      return const Left('Invalid invite code');
    }
  }

  AuthUser _mapFirebaseUserToAuthUser(User user) {
    return AuthUser(
      uid: user.uid,
      email: user.email ?? '',
      name: user.displayName,
      photoUrl: user.photoURL,
      role: UserRole.none,
    );
  }
}
