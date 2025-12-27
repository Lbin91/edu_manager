import 'package:fpdart/fpdart.dart';
import '../../../auth/domain/entities/auth_user.dart';

abstract interface class UserManagementRepository {
  /// 승인 대기 중인 사용자 목록 조회
  Stream<List<AuthUser>> getPendingUsers();

  /// 사용자 역할 승인 (Pending -> Teacher/Driver)
  Future<Either<String, Unit>> approveUser(String uid, UserRole role);

  /// 사용자 거절/삭제
  Future<Either<String, Unit>> deleteUser(String uid);
}
