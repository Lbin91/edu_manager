// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shuttle_schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShuttleScheduleImpl _$$ShuttleScheduleImplFromJson(
  Map<String, dynamic> json,
) => _$ShuttleScheduleImpl(
  id: json['id'] as String,
  route: ShuttleRoute.fromJson(json['route'] as Map<String, dynamic>),
  stops: (json['stops'] as List<dynamic>)
      .map((e) => ShuttleStop.fromJson(e as Map<String, dynamic>))
      .toList(),
  operationDate: DateTime.parse(json['operationDate'] as String),
  roundNumber: (json['roundNumber'] as num).toInt(),
  isCompleted: json['isCompleted'] as bool? ?? false,
);

Map<String, dynamic> _$$ShuttleScheduleImplToJson(
  _$ShuttleScheduleImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'route': instance.route,
  'stops': instance.stops,
  'operationDate': instance.operationDate.toIso8601String(),
  'roundNumber': instance.roundNumber,
  'isCompleted': instance.isCompleted,
};
