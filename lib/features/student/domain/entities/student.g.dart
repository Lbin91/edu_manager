// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentImpl _$$StudentImplFromJson(Map<String, dynamic> json) =>
    _$StudentImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      schoolName: json['schoolName'] as String,
      grade: (json['grade'] as num).toInt(),
      parentPhone: json['parentPhone'] as String,
      studentPhone: json['studentPhone'] as String?,
      address: json['address'] as String?,
      isActive: json['isActive'] as bool? ?? true,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$StudentImplToJson(_$StudentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'schoolName': instance.schoolName,
      'grade': instance.grade,
      'parentPhone': instance.parentPhone,
      'studentPhone': instance.studentPhone,
      'address': instance.address,
      'isActive': instance.isActive,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
