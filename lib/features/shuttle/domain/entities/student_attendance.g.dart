// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_attendance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentAttendanceImpl _$$StudentAttendanceImplFromJson(
  Map<String, dynamic> json,
) => _$StudentAttendanceImpl(
  id: json['id'] as String,
  scheduleId: json['scheduleId'] as String,
  stopId: json['stopId'] as String,
  studentId: json['studentId'] as String,
  studentName: json['studentName'] as String,
  schoolName: json['schoolName'] as String,
  parentPhone: json['parentPhone'] as String,
  grade: (json['grade'] as num).toInt(),
  status:
      $enumDecodeNullable(_$AttendanceStatusEnumMap, json['status']) ??
      AttendanceStatus.waiting,
  checkInTime: json['checkInTime'] == null
      ? null
      : DateTime.parse(json['checkInTime'] as String),
  checkOutTime: json['checkOutTime'] == null
      ? null
      : DateTime.parse(json['checkOutTime'] as String),
  note: json['note'] as String?,
);

Map<String, dynamic> _$$StudentAttendanceImplToJson(
  _$StudentAttendanceImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'scheduleId': instance.scheduleId,
  'stopId': instance.stopId,
  'studentId': instance.studentId,
  'studentName': instance.studentName,
  'schoolName': instance.schoolName,
  'parentPhone': instance.parentPhone,
  'grade': instance.grade,
  'status': _$AttendanceStatusEnumMap[instance.status]!,
  'checkInTime': instance.checkInTime?.toIso8601String(),
  'checkOutTime': instance.checkOutTime?.toIso8601String(),
  'note': instance.note,
};

const _$AttendanceStatusEnumMap = {
  AttendanceStatus.waiting: 'waiting',
  AttendanceStatus.onBoard: 'onBoard',
  AttendanceStatus.dropOff: 'dropOff',
  AttendanceStatus.absent: 'absent',
};
