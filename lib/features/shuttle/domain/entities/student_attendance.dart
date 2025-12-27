import 'package:freezed_annotation/freezed_annotation.dart';

part 'student_attendance.freezed.dart';
part 'student_attendance.g.dart';

enum AttendanceStatus {
  waiting, // 탑승 대기 (기본)
  onBoard, // 탑승 완료 (Blue)
  dropOff, // 하차 완료 (Black) - 하원 시
  absent, // 결석/미탑승 (Red)
}

@freezed
class StudentAttendance with _$StudentAttendance {
  const factory StudentAttendance({
    required String id,
    required String scheduleId,
    required String stopId,
    required String studentId,
    required String studentName,
    required String schoolName,
    required String parentPhone,
    required int grade,
    @Default(AttendanceStatus.waiting) AttendanceStatus status,
    DateTime? checkInTime,
    DateTime? checkOutTime,
    String? note, // 특이사항
  }) = _StudentAttendance;

  factory StudentAttendance.fromJson(Map<String, dynamic> json) =>
      _$StudentAttendanceFromJson(json);
}
