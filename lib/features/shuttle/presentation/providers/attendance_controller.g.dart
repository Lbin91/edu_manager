// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$attendanceRepositoryHash() =>
    r'b0fb00cb94fddf3d342d44b94001cc621114cb0d';

/// See also [attendanceRepository].
@ProviderFor(attendanceRepository)
final attendanceRepositoryProvider =
    AutoDisposeProvider<AttendanceRepository>.internal(
      attendanceRepository,
      name: r'attendanceRepositoryProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$attendanceRepositoryHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef AttendanceRepositoryRef = AutoDisposeProviderRef<AttendanceRepository>;
String _$attendanceControllerHash() =>
    r'ebac641a3291f98092d7bcbc005f0f51a51e7855';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$AttendanceController
    extends BuildlessAutoDisposeAsyncNotifier<List<StudentAttendance>> {
  late final String scheduleId;
  late final String stopId;

  FutureOr<List<StudentAttendance>> build({
    required String scheduleId,
    required String stopId,
  });
}

/// See also [AttendanceController].
@ProviderFor(AttendanceController)
const attendanceControllerProvider = AttendanceControllerFamily();

/// See also [AttendanceController].
class AttendanceControllerFamily
    extends Family<AsyncValue<List<StudentAttendance>>> {
  /// See also [AttendanceController].
  const AttendanceControllerFamily();

  /// See also [AttendanceController].
  AttendanceControllerProvider call({
    required String scheduleId,
    required String stopId,
  }) {
    return AttendanceControllerProvider(scheduleId: scheduleId, stopId: stopId);
  }

  @override
  AttendanceControllerProvider getProviderOverride(
    covariant AttendanceControllerProvider provider,
  ) {
    return call(scheduleId: provider.scheduleId, stopId: provider.stopId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'attendanceControllerProvider';
}

/// See also [AttendanceController].
class AttendanceControllerProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<
          AttendanceController,
          List<StudentAttendance>
        > {
  /// See also [AttendanceController].
  AttendanceControllerProvider({
    required String scheduleId,
    required String stopId,
  }) : this._internal(
         () => AttendanceController()
           ..scheduleId = scheduleId
           ..stopId = stopId,
         from: attendanceControllerProvider,
         name: r'attendanceControllerProvider',
         debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
             ? null
             : _$attendanceControllerHash,
         dependencies: AttendanceControllerFamily._dependencies,
         allTransitiveDependencies:
             AttendanceControllerFamily._allTransitiveDependencies,
         scheduleId: scheduleId,
         stopId: stopId,
       );

  AttendanceControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.scheduleId,
    required this.stopId,
  }) : super.internal();

  final String scheduleId;
  final String stopId;

  @override
  FutureOr<List<StudentAttendance>> runNotifierBuild(
    covariant AttendanceController notifier,
  ) {
    return notifier.build(scheduleId: scheduleId, stopId: stopId);
  }

  @override
  Override overrideWith(AttendanceController Function() create) {
    return ProviderOverride(
      origin: this,
      override: AttendanceControllerProvider._internal(
        () => create()
          ..scheduleId = scheduleId
          ..stopId = stopId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        scheduleId: scheduleId,
        stopId: stopId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<
    AttendanceController,
    List<StudentAttendance>
  >
  createElement() {
    return _AttendanceControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AttendanceControllerProvider &&
        other.scheduleId == scheduleId &&
        other.stopId == stopId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, scheduleId.hashCode);
    hash = _SystemHash.combine(hash, stopId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin AttendanceControllerRef
    on AutoDisposeAsyncNotifierProviderRef<List<StudentAttendance>> {
  /// The parameter `scheduleId` of this provider.
  String get scheduleId;

  /// The parameter `stopId` of this provider.
  String get stopId;
}

class _AttendanceControllerProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<
          AttendanceController,
          List<StudentAttendance>
        >
    with AttendanceControllerRef {
  _AttendanceControllerProviderElement(super.provider);

  @override
  String get scheduleId => (origin as AttendanceControllerProvider).scheduleId;
  @override
  String get stopId => (origin as AttendanceControllerProvider).stopId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
