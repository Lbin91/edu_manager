// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shuttle_stop.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ShuttleStop _$ShuttleStopFromJson(Map<String, dynamic> json) {
  return _ShuttleStop.fromJson(json);
}

/// @nodoc
mixin _$ShuttleStop {
  String get id => throw _privateConstructorUsedError;
  String get name =>
      throw _privateConstructorUsedError; // 정류장 이름 (e.g., 래미안 아파트 정문)
  double get lat => throw _privateConstructorUsedError; // 위도
  double get lng => throw _privateConstructorUsedError; // 경도
  int get orderIndex => throw _privateConstructorUsedError; // 순서
  String get scheduledTime => throw _privateConstructorUsedError;

  /// Serializes this ShuttleStop to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShuttleStop
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShuttleStopCopyWith<ShuttleStop> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShuttleStopCopyWith<$Res> {
  factory $ShuttleStopCopyWith(
    ShuttleStop value,
    $Res Function(ShuttleStop) then,
  ) = _$ShuttleStopCopyWithImpl<$Res, ShuttleStop>;
  @useResult
  $Res call({
    String id,
    String name,
    double lat,
    double lng,
    int orderIndex,
    String scheduledTime,
  });
}

/// @nodoc
class _$ShuttleStopCopyWithImpl<$Res, $Val extends ShuttleStop>
    implements $ShuttleStopCopyWith<$Res> {
  _$ShuttleStopCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShuttleStop
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? lat = null,
    Object? lng = null,
    Object? orderIndex = null,
    Object? scheduledTime = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            lat: null == lat
                ? _value.lat
                : lat // ignore: cast_nullable_to_non_nullable
                      as double,
            lng: null == lng
                ? _value.lng
                : lng // ignore: cast_nullable_to_non_nullable
                      as double,
            orderIndex: null == orderIndex
                ? _value.orderIndex
                : orderIndex // ignore: cast_nullable_to_non_nullable
                      as int,
            scheduledTime: null == scheduledTime
                ? _value.scheduledTime
                : scheduledTime // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ShuttleStopImplCopyWith<$Res>
    implements $ShuttleStopCopyWith<$Res> {
  factory _$$ShuttleStopImplCopyWith(
    _$ShuttleStopImpl value,
    $Res Function(_$ShuttleStopImpl) then,
  ) = __$$ShuttleStopImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    double lat,
    double lng,
    int orderIndex,
    String scheduledTime,
  });
}

/// @nodoc
class __$$ShuttleStopImplCopyWithImpl<$Res>
    extends _$ShuttleStopCopyWithImpl<$Res, _$ShuttleStopImpl>
    implements _$$ShuttleStopImplCopyWith<$Res> {
  __$$ShuttleStopImplCopyWithImpl(
    _$ShuttleStopImpl _value,
    $Res Function(_$ShuttleStopImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ShuttleStop
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? lat = null,
    Object? lng = null,
    Object? orderIndex = null,
    Object? scheduledTime = null,
  }) {
    return _then(
      _$ShuttleStopImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        lat: null == lat
            ? _value.lat
            : lat // ignore: cast_nullable_to_non_nullable
                  as double,
        lng: null == lng
            ? _value.lng
            : lng // ignore: cast_nullable_to_non_nullable
                  as double,
        orderIndex: null == orderIndex
            ? _value.orderIndex
            : orderIndex // ignore: cast_nullable_to_non_nullable
                  as int,
        scheduledTime: null == scheduledTime
            ? _value.scheduledTime
            : scheduledTime // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ShuttleStopImpl implements _ShuttleStop {
  const _$ShuttleStopImpl({
    required this.id,
    required this.name,
    required this.lat,
    required this.lng,
    required this.orderIndex,
    required this.scheduledTime,
  });

  factory _$ShuttleStopImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShuttleStopImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  // 정류장 이름 (e.g., 래미안 아파트 정문)
  @override
  final double lat;
  // 위도
  @override
  final double lng;
  // 경도
  @override
  final int orderIndex;
  // 순서
  @override
  final String scheduledTime;

  @override
  String toString() {
    return 'ShuttleStop(id: $id, name: $name, lat: $lat, lng: $lng, orderIndex: $orderIndex, scheduledTime: $scheduledTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShuttleStopImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            (identical(other.orderIndex, orderIndex) ||
                other.orderIndex == orderIndex) &&
            (identical(other.scheduledTime, scheduledTime) ||
                other.scheduledTime == scheduledTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, lat, lng, orderIndex, scheduledTime);

  /// Create a copy of ShuttleStop
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShuttleStopImplCopyWith<_$ShuttleStopImpl> get copyWith =>
      __$$ShuttleStopImplCopyWithImpl<_$ShuttleStopImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShuttleStopImplToJson(this);
  }
}

abstract class _ShuttleStop implements ShuttleStop {
  const factory _ShuttleStop({
    required final String id,
    required final String name,
    required final double lat,
    required final double lng,
    required final int orderIndex,
    required final String scheduledTime,
  }) = _$ShuttleStopImpl;

  factory _ShuttleStop.fromJson(Map<String, dynamic> json) =
      _$ShuttleStopImpl.fromJson;

  @override
  String get id;
  @override
  String get name; // 정류장 이름 (e.g., 래미안 아파트 정문)
  @override
  double get lat; // 위도
  @override
  double get lng; // 경도
  @override
  int get orderIndex; // 순서
  @override
  String get scheduledTime;

  /// Create a copy of ShuttleStop
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShuttleStopImplCopyWith<_$ShuttleStopImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
