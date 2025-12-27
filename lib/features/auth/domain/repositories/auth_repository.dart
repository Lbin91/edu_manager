import 'package:fpdart/fpdart.dart';
import '../entities/auth_user.dart';

abstract interface class AuthRepository {
  /// 현재 로그인된 사용자 스트림
  Stream<AuthUser?> get authStateChanges;

  /// Google 로그인
  Future<Either<String, AuthUser>> signInWithGoogle();

  /// Apple 로그인
  Future<Either<String, AuthUser>> signInWithApple();

  /// 로그아웃
  Future<void> signOut();

  /// 초대 코드 검증 및 학원 가입 요청
  Future<Either<String, bool>> verifyInviteCode({
    required String uid,
    required String inviteCode,
  });
}
