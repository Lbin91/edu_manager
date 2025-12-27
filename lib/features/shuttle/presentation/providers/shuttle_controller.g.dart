// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shuttle_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$shuttleRepositoryHash() => r'ee3f535112d0c9347ed0bad385297cc1ffb2daa5';

/// See also [shuttleRepository].
@ProviderFor(shuttleRepository)
final shuttleRepositoryProvider =
    AutoDisposeProvider<ShuttleRepository>.internal(
      shuttleRepository,
      name: r'shuttleRepositoryProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$shuttleRepositoryHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef ShuttleRepositoryRef = AutoDisposeProviderRef<ShuttleRepository>;
String _$todaySchedulesHash() => r'c4ef9bf03bf0e083524bfcfcca5b415883df06f5';

/// See also [todaySchedules].
@ProviderFor(todaySchedules)
final todaySchedulesProvider =
    AutoDisposeFutureProvider<List<ShuttleSchedule>>.internal(
      todaySchedules,
      name: r'todaySchedulesProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$todaySchedulesHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef TodaySchedulesRef = AutoDisposeFutureProviderRef<List<ShuttleSchedule>>;
String _$currentScheduleControllerHash() =>
    r'6648318c8b045a1494f55c0028faa071bdf03f93';

/// See also [CurrentScheduleController].
@ProviderFor(CurrentScheduleController)
final currentScheduleControllerProvider =
    AutoDisposeNotifierProvider<
      CurrentScheduleController,
      ShuttleSchedule?
    >.internal(
      CurrentScheduleController.new,
      name: r'currentScheduleControllerProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$currentScheduleControllerHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$CurrentScheduleController = AutoDisposeNotifier<ShuttleSchedule?>;
String _$currentStopIndexControllerHash() =>
    r'c80e90797683c2594b2adaebb3df0cd258318302';

/// See also [CurrentStopIndexController].
@ProviderFor(CurrentStopIndexController)
final currentStopIndexControllerProvider =
    AutoDisposeNotifierProvider<CurrentStopIndexController, int>.internal(
      CurrentStopIndexController.new,
      name: r'currentStopIndexControllerProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$currentStopIndexControllerHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$CurrentStopIndexController = AutoDisposeNotifier<int>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
