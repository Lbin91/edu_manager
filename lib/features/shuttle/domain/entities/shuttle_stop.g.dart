// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shuttle_stop.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShuttleStopImpl _$$ShuttleStopImplFromJson(Map<String, dynamic> json) =>
    _$ShuttleStopImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
      orderIndex: (json['orderIndex'] as num).toInt(),
      scheduledTime: json['scheduledTime'] as String,
    );

Map<String, dynamic> _$$ShuttleStopImplToJson(_$ShuttleStopImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'lat': instance.lat,
      'lng': instance.lng,
      'orderIndex': instance.orderIndex,
      'scheduledTime': instance.scheduledTime,
    };
