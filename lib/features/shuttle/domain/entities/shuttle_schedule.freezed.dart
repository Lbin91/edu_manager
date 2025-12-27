// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shuttle_schedule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ShuttleSchedule _$ShuttleScheduleFromJson(Map<String, dynamic> json) {
  return _ShuttleSchedule.fromJson(json);
}

/// @nodoc
mixin _$ShuttleSchedule {
  String get id => throw _privateConstructorUsedError;
  ShuttleRoute get route => throw _privateConstructorUsedError;
  List<ShuttleStop> get stops => throw _privateConstructorUsedError;
  DateTime get operationDate => throw _privateConstructorUsedError; // 운행 날짜
  int get roundNumber => throw _privateConstructorUsedError; // 회차 번호
  bool get isCompleted => throw _privateConstructorUsedError;

  /// Serializes this ShuttleSchedule to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShuttleSchedule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShuttleScheduleCopyWith<ShuttleSchedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShuttleScheduleCopyWith<$Res> {
  factory $ShuttleScheduleCopyWith(
    ShuttleSchedule value,
    $Res Function(ShuttleSchedule) then,
  ) = _$ShuttleScheduleCopyWithImpl<$Res, ShuttleSchedule>;
  @useResult
  $Res call({
    String id,
    ShuttleRoute route,
    List<ShuttleStop> stops,
    DateTime operationDate,
    int roundNumber,
    bool isCompleted,
  });

  $ShuttleRouteCopyWith<$Res> get route;
}

/// @nodoc
class _$ShuttleScheduleCopyWithImpl<$Res, $Val extends ShuttleSchedule>
    implements $ShuttleScheduleCopyWith<$Res> {
  _$ShuttleScheduleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShuttleSchedule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? route = null,
    Object? stops = null,
    Object? operationDate = null,
    Object? roundNumber = null,
    Object? isCompleted = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            route: null == route
                ? _value.route
                : route // ignore: cast_nullable_to_non_nullable
                      as ShuttleRoute,
            stops: null == stops
                ? _value.stops
                : stops // ignore: cast_nullable_to_non_nullable
                      as List<ShuttleStop>,
            operationDate: null == operationDate
                ? _value.operationDate
                : operationDate // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            roundNumber: null == roundNumber
                ? _value.roundNumber
                : roundNumber // ignore: cast_nullable_to_non_nullable
                      as int,
            isCompleted: null == isCompleted
                ? _value.isCompleted
                : isCompleted // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }

  /// Create a copy of ShuttleSchedule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShuttleRouteCopyWith<$Res> get route {
    return $ShuttleRouteCopyWith<$Res>(_value.route, (value) {
      return _then(_value.copyWith(route: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ShuttleScheduleImplCopyWith<$Res>
    implements $ShuttleScheduleCopyWith<$Res> {
  factory _$$ShuttleScheduleImplCopyWith(
    _$ShuttleScheduleImpl value,
    $Res Function(_$ShuttleScheduleImpl) then,
  ) = __$$ShuttleScheduleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    ShuttleRoute route,
    List<ShuttleStop> stops,
    DateTime operationDate,
    int roundNumber,
    bool isCompleted,
  });

  @override
  $ShuttleRouteCopyWith<$Res> get route;
}

/// @nodoc
class __$$ShuttleScheduleImplCopyWithImpl<$Res>
    extends _$ShuttleScheduleCopyWithImpl<$Res, _$ShuttleScheduleImpl>
    implements _$$ShuttleScheduleImplCopyWith<$Res> {
  __$$ShuttleScheduleImplCopyWithImpl(
    _$ShuttleScheduleImpl _value,
    $Res Function(_$ShuttleScheduleImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ShuttleSchedule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? route = null,
    Object? stops = null,
    Object? operationDate = null,
    Object? roundNumber = null,
    Object? isCompleted = null,
  }) {
    return _then(
      _$ShuttleScheduleImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        route: null == route
            ? _value.route
            : route // ignore: cast_nullable_to_non_nullable
                  as ShuttleRoute,
        stops: null == stops
            ? _value._stops
            : stops // ignore: cast_nullable_to_non_nullable
                  as List<ShuttleStop>,
        operationDate: null == operationDate
            ? _value.operationDate
            : operationDate // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        roundNumber: null == roundNumber
            ? _value.roundNumber
            : roundNumber // ignore: cast_nullable_to_non_nullable
                  as int,
        isCompleted: null == isCompleted
            ? _value.isCompleted
            : isCompleted // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ShuttleScheduleImpl implements _ShuttleSchedule {
  const _$ShuttleScheduleImpl({
    required this.id,
    required this.route,
    required final List<ShuttleStop> stops,
    required this.operationDate,
    required this.roundNumber,
    this.isCompleted = false,
  }) : _stops = stops;

  factory _$ShuttleScheduleImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShuttleScheduleImplFromJson(json);

  @override
  final String id;
  @override
  final ShuttleRoute route;
  final List<ShuttleStop> _stops;
  @override
  List<ShuttleStop> get stops {
    if (_stops is EqualUnmodifiableListView) return _stops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stops);
  }

  @override
  final DateTime operationDate;
  // 운행 날짜
  @override
  final int roundNumber;
  // 회차 번호
  @override
  @JsonKey()
  final bool isCompleted;

  @override
  String toString() {
    return 'ShuttleSchedule(id: $id, route: $route, stops: $stops, operationDate: $operationDate, roundNumber: $roundNumber, isCompleted: $isCompleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShuttleScheduleImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.route, route) || other.route == route) &&
            const DeepCollectionEquality().equals(other._stops, _stops) &&
            (identical(other.operationDate, operationDate) ||
                other.operationDate == operationDate) &&
            (identical(other.roundNumber, roundNumber) ||
                other.roundNumber == roundNumber) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    route,
    const DeepCollectionEquality().hash(_stops),
    operationDate,
    roundNumber,
    isCompleted,
  );

  /// Create a copy of ShuttleSchedule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShuttleScheduleImplCopyWith<_$ShuttleScheduleImpl> get copyWith =>
      __$$ShuttleScheduleImplCopyWithImpl<_$ShuttleScheduleImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ShuttleScheduleImplToJson(this);
  }
}

abstract class _ShuttleSchedule implements ShuttleSchedule {
  const factory _ShuttleSchedule({
    required final String id,
    required final ShuttleRoute route,
    required final List<ShuttleStop> stops,
    required final DateTime operationDate,
    required final int roundNumber,
    final bool isCompleted,
  }) = _$ShuttleScheduleImpl;

  factory _ShuttleSchedule.fromJson(Map<String, dynamic> json) =
      _$ShuttleScheduleImpl.fromJson;

  @override
  String get id;
  @override
  ShuttleRoute get route;
  @override
  List<ShuttleStop> get stops;
  @override
  DateTime get operationDate; // 운행 날짜
  @override
  int get roundNumber; // 회차 번호
  @override
  bool get isCompleted;

  /// Create a copy of ShuttleSchedule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShuttleScheduleImplCopyWith<_$ShuttleScheduleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
