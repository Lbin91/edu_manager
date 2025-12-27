// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shuttle_route.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShuttleRouteImpl _$$ShuttleRouteImplFromJson(Map<String, dynamic> json) =>
    _$ShuttleRouteImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      driverId: json['driverId'] as String,
      carNumber: json['carNumber'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$ShuttleRouteImplToJson(_$ShuttleRouteImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'driverId': instance.driverId,
      'carNumber': instance.carNumber,
      'description': instance.description,
    };
