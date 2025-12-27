import 'package:fpdart/fpdart.dart';
import 'package:rxdart/rxdart.dart';
import '../../../auth/domain/entities/auth_user.dart';
import '../../domain/repositories/user_management_repository.dart';

class UserManagementRepositoryMock implements UserManagementRepository {
  final _pendingUsers = BehaviorSubject<List<AuthUser>>.seeded([
    const AuthUser(
      uid: 'user_1',
      email: 'teacher1@edu.com',
      name: '홍길동 선생님',
      role: UserRole.pending,
    ),
    const AuthUser(
      uid: 'user_2',
      email: 'driver1@edu.com',
      name: '김기사',
      role: UserRole.pending,
    ),
  ]);

  @override
  Stream<List<AuthUser>> getPendingUsers() => _pendingUsers.stream;

  @override
  Future<Either<String, Unit>> approveUser(String uid, UserRole role) async {
    final currentList = _pendingUsers.value;
    final userIndex = currentList.indexWhere((u) => u.uid == uid);

    if (userIndex == -1) return const Left('User not found');

    // Remove from pending list (In real app, update status in DB)
    final updatedList = List<AuthUser>.from(currentList)..removeAt(userIndex);
    _pendingUsers.add(updatedList);

    return const Right(unit);
  }

  @override
  Future<Either<String, Unit>> deleteUser(String uid) async {
    final currentList = _pendingUsers.value;
    final updatedList = currentList.where((u) => u.uid != uid).toList();
    _pendingUsers.add(updatedList);
    return const Right(unit);
  }
}
