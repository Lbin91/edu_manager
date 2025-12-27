import 'dart:async';
import 'package:fpdart/fpdart.dart';
import 'package:rxdart/rxdart.dart';
import 'package:uuid/uuid.dart';
import '../../domain/entities/student.dart';
import '../../domain/repositories/student_repository.dart';

class StudentRepositoryMock implements StudentRepository {
  // In-memory Mock Data
  final _students = BehaviorSubject<List<Student>>.seeded([
    Student(
      id: '1',
      name: '김철수',
      schoolName: '행복초등학교',
      grade: 3,
      parentPhone: '010-1234-5678',
      studentPhone: '010-1111-2222',
      address: '서울시 강남구 역삼동',
      createdAt: DateTime.now().subtract(const Duration(days: 10)),
    ),
    Student(
      id: '2',
      name: '이영희',
      schoolName: '희망유치원',
      grade: 0,
      parentPhone: '010-9876-5432',
      address: '서울시 서초구 서초동',
      createdAt: DateTime.now().subtract(const Duration(days: 5)),
    ),
  ]);

  @override
  Stream<List<Student>> getStudents() => _students.stream;

  @override
  Future<Either<String, Student>> getStudent(String id) async {
    try {
      final student = _students.value.firstWhere((s) => s.id == id);
      return Right(student);
    } catch (_) {
      return const Left('Student not found');
    }
  }

  @override
  Future<Either<String, Unit>> addStudent(Student student) async {
    final newStudent = student.copyWith(
      id: const Uuid().v4(),
      createdAt: DateTime.now(),
    );
    final currentList = _students.value;
    _students.add([...currentList, newStudent]);
    return const Right(unit);
  }

  @override
  Future<Either<String, Unit>> updateStudent(Student student) async {
    final currentList = _students.value;
    final index = currentList.indexWhere((s) => s.id == student.id);
    if (index == -1) return const Left('Student not found');

    final updatedList = List<Student>.from(currentList);
    updatedList[index] = student;
    _students.add(updatedList);
    return const Right(unit);
  }

  @override
  Future<Either<String, Unit>> deleteStudent(String id) async {
    final currentList = _students.value;
    final updatedList = currentList.where((s) => s.id != id).toList();
    _students.add(updatedList);
    return const Right(unit);
  }
}
