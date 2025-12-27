// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shuttle_route.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ShuttleRoute _$ShuttleRouteFromJson(Map<String, dynamic> json) {
  return _ShuttleRoute.fromJson(json);
}

/// @nodoc
mixin _$ShuttleRoute {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError; // 노선명 (e.g., A호차, B호차)
  String get driverId => throw _privateConstructorUsedError; // 담당 기사 ID
  String get carNumber => throw _privateConstructorUsedError; // 차량 번호
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this ShuttleRoute to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShuttleRoute
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShuttleRouteCopyWith<ShuttleRoute> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShuttleRouteCopyWith<$Res> {
  factory $ShuttleRouteCopyWith(
    ShuttleRoute value,
    $Res Function(ShuttleRoute) then,
  ) = _$ShuttleRouteCopyWithImpl<$Res, ShuttleRoute>;
  @useResult
  $Res call({
    String id,
    String name,
    String driverId,
    String carNumber,
    String? description,
  });
}

/// @nodoc
class _$ShuttleRouteCopyWithImpl<$Res, $Val extends ShuttleRoute>
    implements $ShuttleRouteCopyWith<$Res> {
  _$ShuttleRouteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShuttleRoute
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? driverId = null,
    Object? carNumber = null,
    Object? description = freezed,
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
            driverId: null == driverId
                ? _value.driverId
                : driverId // ignore: cast_nullable_to_non_nullable
                      as String,
            carNumber: null == carNumber
                ? _value.carNumber
                : carNumber // ignore: cast_nullable_to_non_nullable
                      as String,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ShuttleRouteImplCopyWith<$Res>
    implements $ShuttleRouteCopyWith<$Res> {
  factory _$$ShuttleRouteImplCopyWith(
    _$ShuttleRouteImpl value,
    $Res Function(_$ShuttleRouteImpl) then,
  ) = __$$ShuttleRouteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    String driverId,
    String carNumber,
    String? description,
  });
}

/// @nodoc
class __$$ShuttleRouteImplCopyWithImpl<$Res>
    extends _$ShuttleRouteCopyWithImpl<$Res, _$ShuttleRouteImpl>
    implements _$$ShuttleRouteImplCopyWith<$Res> {
  __$$ShuttleRouteImplCopyWithImpl(
    _$ShuttleRouteImpl _value,
    $Res Function(_$ShuttleRouteImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ShuttleRoute
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? driverId = null,
    Object? carNumber = null,
    Object? description = freezed,
  }) {
    return _then(
      _$ShuttleRouteImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        driverId: null == driverId
            ? _value.driverId
            : driverId // ignore: cast_nullable_to_non_nullable
                  as String,
        carNumber: null == carNumber
            ? _value.carNumber
            : carNumber // ignore: cast_nullable_to_non_nullable
                  as String,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ShuttleRouteImpl implements _ShuttleRoute {
  const _$ShuttleRouteImpl({
    required this.id,
    required this.name,
    required this.driverId,
    required this.carNumber,
    this.description,
  });

  factory _$ShuttleRouteImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShuttleRouteImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  // 노선명 (e.g., A호차, B호차)
  @override
  final String driverId;
  // 담당 기사 ID
  @override
  final String carNumber;
  // 차량 번호
  @override
  final String? description;

  @override
  String toString() {
    return 'ShuttleRoute(id: $id, name: $name, driverId: $driverId, carNumber: $carNumber, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShuttleRouteImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.driverId, driverId) ||
                other.driverId == driverId) &&
            (identical(other.carNumber, carNumber) ||
                other.carNumber == carNumber) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, driverId, carNumber, description);

  /// Create a copy of ShuttleRoute
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShuttleRouteImplCopyWith<_$ShuttleRouteImpl> get copyWith =>
      __$$ShuttleRouteImplCopyWithImpl<_$ShuttleRouteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShuttleRouteImplToJson(this);
  }
}

abstract class _ShuttleRoute implements ShuttleRoute {
  const factory _ShuttleRoute({
    required final String id,
    required final String name,
    required final String driverId,
    required final String carNumber,
    final String? description,
  }) = _$ShuttleRouteImpl;

  factory _ShuttleRoute.fromJson(Map<String, dynamic> json) =
      _$ShuttleRouteImpl.fromJson;

  @override
  String get id;
  @override
  String get name; // 노선명 (e.g., A호차, B호차)
  @override
  String get driverId; // 담당 기사 ID
  @override
  String get carNumber; // 차량 번호
  @override
  String? get description;

  /// Create a copy of ShuttleRoute
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShuttleRouteImplCopyWith<_$ShuttleRouteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
