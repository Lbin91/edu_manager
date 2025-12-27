// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_attendance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

StudentAttendance _$StudentAttendanceFromJson(Map<String, dynamic> json) {
  return _StudentAttendance.fromJson(json);
}

/// @nodoc
mixin _$StudentAttendance {
  String get id => throw _privateConstructorUsedError;
  String get scheduleId => throw _privateConstructorUsedError;
  String get stopId => throw _privateConstructorUsedError;
  String get studentId => throw _privateConstructorUsedError;
  String get studentName => throw _privateConstructorUsedError;
  String get schoolName => throw _privateConstructorUsedError;
  String get parentPhone => throw _privateConstructorUsedError;
  int get grade => throw _privateConstructorUsedError;
  AttendanceStatus get status => throw _privateConstructorUsedError;
  DateTime? get checkInTime => throw _privateConstructorUsedError;
  DateTime? get checkOutTime => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;

  /// Serializes this StudentAttendance to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentAttendance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentAttendanceCopyWith<StudentAttendance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentAttendanceCopyWith<$Res> {
  factory $StudentAttendanceCopyWith(
    StudentAttendance value,
    $Res Function(StudentAttendance) then,
  ) = _$StudentAttendanceCopyWithImpl<$Res, StudentAttendance>;
  @useResult
  $Res call({
    String id,
    String scheduleId,
    String stopId,
    String studentId,
    String studentName,
    String schoolName,
    String parentPhone,
    int grade,
    AttendanceStatus status,
    DateTime? checkInTime,
    DateTime? checkOutTime,
    String? note,
  });
}

/// @nodoc
class _$StudentAttendanceCopyWithImpl<$Res, $Val extends StudentAttendance>
    implements $StudentAttendanceCopyWith<$Res> {
  _$StudentAttendanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentAttendance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? scheduleId = null,
    Object? stopId = null,
    Object? studentId = null,
    Object? studentName = null,
    Object? schoolName = null,
    Object? parentPhone = null,
    Object? grade = null,
    Object? status = null,
    Object? checkInTime = freezed,
    Object? checkOutTime = freezed,
    Object? note = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            scheduleId: null == scheduleId
                ? _value.scheduleId
                : scheduleId // ignore: cast_nullable_to_non_nullable
                      as String,
            stopId: null == stopId
                ? _value.stopId
                : stopId // ignore: cast_nullable_to_non_nullable
                      as String,
            studentId: null == studentId
                ? _value.studentId
                : studentId // ignore: cast_nullable_to_non_nullable
                      as String,
            studentName: null == studentName
                ? _value.studentName
                : studentName // ignore: cast_nullable_to_non_nullable
                      as String,
            schoolName: null == schoolName
                ? _value.schoolName
                : schoolName // ignore: cast_nullable_to_non_nullable
                      as String,
            parentPhone: null == parentPhone
                ? _value.parentPhone
                : parentPhone // ignore: cast_nullable_to_non_nullable
                      as String,
            grade: null == grade
                ? _value.grade
                : grade // ignore: cast_nullable_to_non_nullable
                      as int,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as AttendanceStatus,
            checkInTime: freezed == checkInTime
                ? _value.checkInTime
                : checkInTime // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            checkOutTime: freezed == checkOutTime
                ? _value.checkOutTime
                : checkOutTime // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            note: freezed == note
                ? _value.note
                : note // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$StudentAttendanceImplCopyWith<$Res>
    implements $StudentAttendanceCopyWith<$Res> {
  factory _$$StudentAttendanceImplCopyWith(
    _$StudentAttendanceImpl value,
    $Res Function(_$StudentAttendanceImpl) then,
  ) = __$$StudentAttendanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String scheduleId,
    String stopId,
    String studentId,
    String studentName,
    String schoolName,
    String parentPhone,
    int grade,
    AttendanceStatus status,
    DateTime? checkInTime,
    DateTime? checkOutTime,
    String? note,
  });
}

/// @nodoc
class __$$StudentAttendanceImplCopyWithImpl<$Res>
    extends _$StudentAttendanceCopyWithImpl<$Res, _$StudentAttendanceImpl>
    implements _$$StudentAttendanceImplCopyWith<$Res> {
  __$$StudentAttendanceImplCopyWithImpl(
    _$StudentAttendanceImpl _value,
    $Res Function(_$StudentAttendanceImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StudentAttendance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? scheduleId = null,
    Object? stopId = null,
    Object? studentId = null,
    Object? studentName = null,
    Object? schoolName = null,
    Object? parentPhone = null,
    Object? grade = null,
    Object? status = null,
    Object? checkInTime = freezed,
    Object? checkOutTime = freezed,
    Object? note = freezed,
  }) {
    return _then(
      _$StudentAttendanceImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        scheduleId: null == scheduleId
            ? _value.scheduleId
            : scheduleId // ignore: cast_nullable_to_non_nullable
                  as String,
        stopId: null == stopId
            ? _value.stopId
            : stopId // ignore: cast_nullable_to_non_nullable
                  as String,
        studentId: null == studentId
            ? _value.studentId
            : studentId // ignore: cast_nullable_to_non_nullable
                  as String,
        studentName: null == studentName
            ? _value.studentName
            : studentName // ignore: cast_nullable_to_non_nullable
                  as String,
        schoolName: null == schoolName
            ? _value.schoolName
            : schoolName // ignore: cast_nullable_to_non_nullable
                  as String,
        parentPhone: null == parentPhone
            ? _value.parentPhone
            : parentPhone // ignore: cast_nullable_to_non_nullable
                  as String,
        grade: null == grade
            ? _value.grade
            : grade // ignore: cast_nullable_to_non_nullable
                  as int,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as AttendanceStatus,
        checkInTime: freezed == checkInTime
            ? _value.checkInTime
            : checkInTime // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        checkOutTime: freezed == checkOutTime
            ? _value.checkOutTime
            : checkOutTime // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        note: freezed == note
            ? _value.note
            : note // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentAttendanceImpl implements _StudentAttendance {
  const _$StudentAttendanceImpl({
    required this.id,
    required this.scheduleId,
    required this.stopId,
    required this.studentId,
    required this.studentName,
    required this.schoolName,
    required this.parentPhone,
    required this.grade,
    this.status = AttendanceStatus.waiting,
    this.checkInTime,
    this.checkOutTime,
    this.note,
  });

  factory _$StudentAttendanceImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentAttendanceImplFromJson(json);

  @override
  final String id;
  @override
  final String scheduleId;
  @override
  final String stopId;
  @override
  final String studentId;
  @override
  final String studentName;
  @override
  final String schoolName;
  @override
  final String parentPhone;
  @override
  final int grade;
  @override
  @JsonKey()
  final AttendanceStatus status;
  @override
  final DateTime? checkInTime;
  @override
  final DateTime? checkOutTime;
  @override
  final String? note;

  @override
  String toString() {
    return 'StudentAttendance(id: $id, scheduleId: $scheduleId, stopId: $stopId, studentId: $studentId, studentName: $studentName, schoolName: $schoolName, parentPhone: $parentPhone, grade: $grade, status: $status, checkInTime: $checkInTime, checkOutTime: $checkOutTime, note: $note)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentAttendanceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.scheduleId, scheduleId) ||
                other.scheduleId == scheduleId) &&
            (identical(other.stopId, stopId) || other.stopId == stopId) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.studentName, studentName) ||
                other.studentName == studentName) &&
            (identical(other.schoolName, schoolName) ||
                other.schoolName == schoolName) &&
            (identical(other.parentPhone, parentPhone) ||
                other.parentPhone == parentPhone) &&
            (identical(other.grade, grade) || other.grade == grade) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.checkInTime, checkInTime) ||
                other.checkInTime == checkInTime) &&
            (identical(other.checkOutTime, checkOutTime) ||
                other.checkOutTime == checkOutTime) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    scheduleId,
    stopId,
    studentId,
    studentName,
    schoolName,
    parentPhone,
    grade,
    status,
    checkInTime,
    checkOutTime,
    note,
  );

  /// Create a copy of StudentAttendance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentAttendanceImplCopyWith<_$StudentAttendanceImpl> get copyWith =>
      __$$StudentAttendanceImplCopyWithImpl<_$StudentAttendanceImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentAttendanceImplToJson(this);
  }
}

abstract class _StudentAttendance implements StudentAttendance {
  const factory _StudentAttendance({
    required final String id,
    required final String scheduleId,
    required final String stopId,
    required final String studentId,
    required final String studentName,
    required final String schoolName,
    required final String parentPhone,
    required final int grade,
    final AttendanceStatus status,
    final DateTime? checkInTime,
    final DateTime? checkOutTime,
    final String? note,
  }) = _$StudentAttendanceImpl;

  factory _StudentAttendance.fromJson(Map<String, dynamic> json) =
      _$StudentAttendanceImpl.fromJson;

  @override
  String get id;
  @override
  String get scheduleId;
  @override
  String get stopId;
  @override
  String get studentId;
  @override
  String get studentName;
  @override
  String get schoolName;
  @override
  String get parentPhone;
  @override
  int get grade;
  @override
  AttendanceStatus get status;
  @override
  DateTime? get checkInTime;
  @override
  DateTime? get checkOutTime;
  @override
  String? get note;

  /// Create a copy of StudentAttendance
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentAttendanceImplCopyWith<_$StudentAttendanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
