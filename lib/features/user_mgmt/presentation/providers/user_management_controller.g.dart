// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_management_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userManagementRepositoryHash() =>
    r'7b5720fb1aa399ecc4121236d1efb40a0304d8f3';

/// See also [userManagementRepository].
@ProviderFor(userManagementRepository)
final userManagementRepositoryProvider =
    AutoDisposeProvider<UserManagementRepository>.internal(
      userManagementRepository,
      name: r'userManagementRepositoryProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$userManagementRepositoryHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef UserManagementRepositoryRef =
    AutoDisposeProviderRef<UserManagementRepository>;
String _$pendingUsersControllerHash() =>
    r'3756f12d9a34bfc441207d5ea553aa3541ef691d';

/// See also [PendingUsersController].
@ProviderFor(PendingUsersController)
final pendingUsersControllerProvider =
    AutoDisposeStreamNotifierProvider<
      PendingUsersController,
      List<AuthUser>
    >.internal(
      PendingUsersController.new,
      name: r'pendingUsersControllerProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$pendingUsersControllerHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$PendingUsersController = AutoDisposeStreamNotifier<List<AuthUser>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
