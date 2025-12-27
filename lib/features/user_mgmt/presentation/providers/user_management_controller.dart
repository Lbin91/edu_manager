import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../auth/domain/entities/auth_user.dart';
import '../../domain/repositories/user_management_repository.dart';
import '../../data/repositories/user_management_repository_impl.dart';

part 'user_management_controller.g.dart';

// Repository Provider
@riverpod
UserManagementRepository userManagementRepository(Ref ref) {
  return UserManagementRepositoryMock();
}

// Controller for Pending Users
@riverpod
class PendingUsersController extends _$PendingUsersController {
  @override
  Stream<List<AuthUser>> build() {
    final repo = ref.watch(userManagementRepositoryProvider);
    return repo.getPendingUsers();
  }

  Future<void> approveUser(String uid, UserRole role) async {
    final repo = ref.read(userManagementRepositoryProvider);
    await repo.approveUser(uid, role);
    // Stream will auto-update
  }

  Future<void> rejectUser(String uid) async {
    final repo = ref.read(userManagementRepositoryProvider);
    await repo.deleteUser(uid);
  }
}
