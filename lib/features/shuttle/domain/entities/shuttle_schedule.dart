import 'package:freezed_annotation/freezed_annotation.dart';
import 'shuttle_route.dart';
import 'shuttle_stop.dart';

part 'shuttle_schedule.freezed.dart';
part 'shuttle_schedule.g.dart';

@freezed
class ShuttleSchedule with _$ShuttleSchedule {
  const factory ShuttleSchedule({
    required String id,
    required ShuttleRoute route,
    required List<ShuttleStop> stops,
    required DateTime operationDate, // 운행 날짜
    required int roundNumber, // 회차 번호
    @Default(false) bool isCompleted,
  }) = _ShuttleSchedule;

  factory ShuttleSchedule.fromJson(Map<String, dynamic> json) =>
      _$ShuttleScheduleFromJson(json);
}
