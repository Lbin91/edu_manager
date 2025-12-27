import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/entities/student_attendance.dart';
import '../../domain/repositories/attendance_repository.dart';
import '../../data/repositories/attendance_repository_impl.dart';

part 'attendance_controller.g.dart';

@riverpod
AttendanceRepository attendanceRepository(Ref ref) {
  return AttendanceRepositoryMock();
}

@riverpod
class AttendanceController extends _$AttendanceController {
  @override
  FutureOr<List<StudentAttendance>> build({
    required String scheduleId,
    required String stopId,
  }) async {
    final repo = ref.watch(attendanceRepositoryProvider);
    final result = await repo.getAttendanceList(
      scheduleId: scheduleId,
      stopId: stopId,
    );
    return result.getOrElse((_) => []);
  }

  Future<void> updateStatus(
    String attendanceId,
    AttendanceStatus status,
  ) async {
    final repo = ref.read(attendanceRepositoryProvider);
    await repo.updateAttendanceStatus(
      attendanceId: attendanceId,
      status: status,
    );
    // Refresh the list
    ref.invalidateSelf();
  }
}
