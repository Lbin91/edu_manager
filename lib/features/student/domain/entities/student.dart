import 'package:freezed_annotation/freezed_annotation.dart';

part 'student.freezed.dart';
part 'student.g.dart';

@freezed
class Student with _$Student {
  const factory Student({
    required String id,
    required String name,
    required String schoolName, // 학교/유치원 이름
    required int grade, // 학년 (0: 유치부, 1~6: 초등, 7~9: 중등, 10~12: 고등)
    required String parentPhone,
    String? studentPhone,
    String? address,
    @Default(true) bool isActive,
    DateTime? createdAt,
  }) = _Student;

  factory Student.fromJson(Map<String, dynamic> json) =>
      _$StudentFromJson(json);
}
