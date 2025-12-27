import 'package:fpdart/fpdart.dart';
import '../entities/student_attendance.dart';

abstract interface class AttendanceRepository {
  /// 특정 스케줄/정류장의 출석부(원생 목록) 조회
  // Note: 실제로는 스케줄 탑승 명단과 비교하여 생성
  Future<Either<String, List<StudentAttendance>>> getAttendanceList({
    required String scheduleId,
    required String stopId,
  });

  /// 출석 상태 업데이트 (탑승/하차/결석)
  Future<Either<String, Unit>> updateAttendanceStatus({
    required String attendanceId,
    required AttendanceStatus status,
  });
}
