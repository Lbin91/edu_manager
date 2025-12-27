import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/entities/auth_user.dart';
import '../../domain/repositories/auth_repository.dart';
import '../../data/repositories/auth_repository_impl.dart';

part 'auth_controller.g.dart';

// Repository Provider
@riverpod
AuthRepository authRepository(Ref ref) {
  return AuthRepositoryImpl();
}

// Auth State Controller
@riverpod
class AuthController extends _$AuthController {
  @override
  FutureOr<AuthUser?> build() {
    final repo = ref.watch(authRepositoryProvider);
    // Listen to auth state changes directly
    return repo.authStateChanges.first;
  }

  Future<void> signInWithGoogle() async {
    state = const AsyncValue.loading();
    final repo = ref.read(authRepositoryProvider);
    final result = await repo.signInWithGoogle();

    result.fold(
      (error) => state = AsyncValue.error(error, StackTrace.current),
      (user) => state = AsyncValue.data(user),
    );
  }

  Future<void> signOut() async {
    state = const AsyncValue.loading();
    final repo = ref.read(authRepositoryProvider);
    await repo.signOut();
    state = const AsyncValue.data(null);
  }
}
