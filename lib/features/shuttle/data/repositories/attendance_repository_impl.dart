import 'package:fpdart/fpdart.dart';
import 'package:rxdart/rxdart.dart';
import '../../domain/entities/student_attendance.dart';
import '../../domain/repositories/attendance_repository.dart';

class AttendanceRepositoryMock implements AttendanceRepository {
  // In-memory store: Map<scheduleId_stopId, List<StudentAttendance>>
  final _attendanceStore = BehaviorSubject<List<StudentAttendance>>.seeded([]);

  AttendanceRepositoryMock() {
    _initMockData();
  }

  void _initMockData() {
    // Initial dummy data for testing
    _attendanceStore.add([
      // Schedule 1, Stop 1 (래미안 정문)
      const StudentAttendance(
        id: 'att1',
        scheduleId: 'sch1',
        stopId: 's1',
        studentId: 'st1',
        studentName: '김철수',
        schoolName: '행복초',
        parentPhone: '010-1111-1111',
        grade: 3,
        status: AttendanceStatus.waiting,
      ),
      const StudentAttendance(
        id: 'att2',
        scheduleId: 'sch1',
        stopId: 's1',
        studentId: 'st2',
        studentName: '이영희',
        schoolName: '행복초',
        parentPhone: '010-2222-2222',
        grade: 3,
        status: AttendanceStatus.waiting,
      ),
      // Schedule 1, Stop 2 (자이 후문)
      const StudentAttendance(
        id: 'att3',
        scheduleId: 'sch1',
        stopId: 's2',
        studentId: 'st3',
        studentName: '박민수',
        schoolName: '희망초',
        parentPhone: '010-3333-3333',
        grade: 2,
        status: AttendanceStatus.waiting,
      ),
    ]);
  }

  @override
  Future<Either<String, List<StudentAttendance>>> getAttendanceList({
    required String scheduleId,
    required String stopId,
  }) async {
    await Future.delayed(const Duration(milliseconds: 300));
    final all = _attendanceStore.value;
    final filtered = all
        .where((a) => a.scheduleId == scheduleId && a.stopId == stopId)
        .toList();
    return Right(filtered);
  }

  @override
  Future<Either<String, Unit>> updateAttendanceStatus({
    required String attendanceId,
    required AttendanceStatus status,
  }) async {
    final currentList = _attendanceStore.value;
    final index = currentList.indexWhere((a) => a.id == attendanceId);

    if (index == -1) return const Left('Attendance record not found');

    final updatedItem = currentList[index].copyWith(
      status: status,
      checkInTime: status == AttendanceStatus.onBoard
          ? DateTime.now()
          : currentList[index].checkInTime,
      checkOutTime: status == AttendanceStatus.dropOff
          ? DateTime.now()
          : currentList[index].checkOutTime,
    );

    final newList = List<StudentAttendance>.from(currentList);
    newList[index] = updatedItem;
    _attendanceStore.add(newList);

    return const Right(unit);
  }
}
