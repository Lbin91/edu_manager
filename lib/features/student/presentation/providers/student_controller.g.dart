// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$studentRepositoryHash() => r'215ae918f3a760f767c681ad7b4e49f2716150be';

/// See also [studentRepository].
@ProviderFor(studentRepository)
final studentRepositoryProvider =
    AutoDisposeProvider<StudentRepository>.internal(
      studentRepository,
      name: r'studentRepositoryProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$studentRepositoryHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef StudentRepositoryRef = AutoDisposeProviderRef<StudentRepository>;
String _$studentControllerHash() => r'ac73be8508f1528658edebd6953478267bc8c219';

/// See also [StudentController].
@ProviderFor(StudentController)
final studentControllerProvider =
    AutoDisposeStreamNotifierProvider<
      StudentController,
      List<Student>
    >.internal(
      StudentController.new,
      name: r'studentControllerProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$studentControllerHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$StudentController = AutoDisposeStreamNotifier<List<Student>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
