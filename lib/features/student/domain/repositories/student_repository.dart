import 'package:fpdart/fpdart.dart';
import '../entities/student.dart';

abstract interface class StudentRepository {
  /// 전체 원생 목록 조회
  Stream<List<Student>> getStudents();

  /// 원생 상세 조회
  Future<Either<String, Student>> getStudent(String id);

  /// 원생 등록
  Future<Either<String, Unit>> addStudent(Student student);

  /// 원생 정보 수정
  Future<Either<String, Unit>> updateStudent(Student student);

  /// 원생 삭제 (실제 삭제 or 비활성화)
  Future<Either<String, Unit>> deleteStudent(String id);
}
