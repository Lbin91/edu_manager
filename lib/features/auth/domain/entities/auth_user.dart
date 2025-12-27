import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_user.freezed.dart';
part 'auth_user.g.dart';

enum UserRole {
  admin,
  teacher,
  driver,
  pending, // 가입 승인 대기
  none, // 가입 전 (초대코드 입력 필요)
}

@freezed
class AuthUser with _$AuthUser {
  const factory AuthUser({
    required String uid,
    required String email,
    String? name,
    @Default(UserRole.none) UserRole role,
    String? academyId,
    String? photoUrl,
  }) = _AuthUser;

  factory AuthUser.fromJson(Map<String, dynamic> json) =>
      _$AuthUserFromJson(json);
}
