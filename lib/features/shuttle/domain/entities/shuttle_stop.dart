import 'package:freezed_annotation/freezed_annotation.dart';

part 'shuttle_stop.freezed.dart';
part 'shuttle_stop.g.dart';

@freezed
class ShuttleStop with _$ShuttleStop {
  const factory ShuttleStop({
    required String id,
    required String name, // 정류장 이름 (e.g., 래미안 아파트 정문)
    required double lat, // 위도
    required double lng, // 경도
    required int orderIndex, // 순서
    required String scheduledTime, // 예정 시간 (HH:mm)
  }) = _ShuttleStop;

  factory ShuttleStop.fromJson(Map<String, dynamic> json) =>
      _$ShuttleStopFromJson(json);
}
