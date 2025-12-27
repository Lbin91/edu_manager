import 'package:freezed_annotation/freezed_annotation.dart';

part 'shuttle_route.freezed.dart';
part 'shuttle_route.g.dart';

@freezed
class ShuttleRoute with _$ShuttleRoute {
  const factory ShuttleRoute({
    required String id,
    required String name, // 노선명 (e.g., A호차, B호차)
    required String driverId, // 담당 기사 ID
    required String carNumber, // 차량 번호
    String? description,
  }) = _ShuttleRoute;

  factory ShuttleRoute.fromJson(Map<String, dynamic> json) =>
      _$ShuttleRouteFromJson(json);
}
