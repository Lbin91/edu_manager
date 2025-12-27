import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/entities/student.dart';
import '../../domain/repositories/student_repository.dart';
import '../../data/repositories/student_repository_impl.dart';

part 'student_controller.g.dart';

// Repository Provider
@riverpod
StudentRepository studentRepository(Ref ref) {
  return StudentRepositoryMock();
}

// Student List Controller
@riverpod
class StudentController extends _$StudentController {
  @override
  Stream<List<Student>> build() {
    final repo = ref.watch(studentRepositoryProvider);
    return repo.getStudents();
  }

  Future<void> addStudent(Student student) async {
    final repo = ref.read(studentRepositoryProvider);
    await repo.addStudent(student);
  }

  Future<void> updateStudent(Student student) async {
    final repo = ref.read(studentRepositoryProvider);
    await repo.updateStudent(student);
  }

  Future<void> deleteStudent(String id) async {
    final repo = ref.read(studentRepositoryProvider);
    await repo.deleteStudent(id);
  }
}
