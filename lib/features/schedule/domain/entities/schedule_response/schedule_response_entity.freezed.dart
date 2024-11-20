// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ScheduleResponseEntity _$ScheduleResponseEntityFromJson(
    Map<String, dynamic> json) {
  return _ScheduleResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$ScheduleResponseEntity {
  String? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<ScheduleEntity>? get data => throw _privateConstructorUsedError;

  /// Serializes this ScheduleResponseEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScheduleResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScheduleResponseEntityCopyWith<ScheduleResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleResponseEntityCopyWith<$Res> {
  factory $ScheduleResponseEntityCopyWith(ScheduleResponseEntity value,
          $Res Function(ScheduleResponseEntity) then) =
      _$ScheduleResponseEntityCopyWithImpl<$Res, ScheduleResponseEntity>;
  @useResult
  $Res call({String? status, String? message, List<ScheduleEntity>? data});
}

/// @nodoc
class _$ScheduleResponseEntityCopyWithImpl<$Res,
        $Val extends ScheduleResponseEntity>
    implements $ScheduleResponseEntityCopyWith<$Res> {
  _$ScheduleResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScheduleResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ScheduleEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScheduleResponseEntityImplCopyWith<$Res>
    implements $ScheduleResponseEntityCopyWith<$Res> {
  factory _$$ScheduleResponseEntityImplCopyWith(
          _$ScheduleResponseEntityImpl value,
          $Res Function(_$ScheduleResponseEntityImpl) then) =
      __$$ScheduleResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status, String? message, List<ScheduleEntity>? data});
}

/// @nodoc
class __$$ScheduleResponseEntityImplCopyWithImpl<$Res>
    extends _$ScheduleResponseEntityCopyWithImpl<$Res,
        _$ScheduleResponseEntityImpl>
    implements _$$ScheduleResponseEntityImplCopyWith<$Res> {
  __$$ScheduleResponseEntityImplCopyWithImpl(
      _$ScheduleResponseEntityImpl _value,
      $Res Function(_$ScheduleResponseEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ScheduleResponseEntityImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ScheduleEntity>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScheduleResponseEntityImpl implements _ScheduleResponseEntity {
  const _$ScheduleResponseEntityImpl(
      {this.status, this.message, final List<ScheduleEntity>? data})
      : _data = data;

  factory _$ScheduleResponseEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScheduleResponseEntityImplFromJson(json);

  @override
  final String? status;
  @override
  final String? message;
  final List<ScheduleEntity>? _data;
  @override
  List<ScheduleEntity>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ScheduleResponseEntity(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleResponseEntityImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, message, const DeepCollectionEquality().hash(_data));

  /// Create a copy of ScheduleResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleResponseEntityImplCopyWith<_$ScheduleResponseEntityImpl>
      get copyWith => __$$ScheduleResponseEntityImplCopyWithImpl<
          _$ScheduleResponseEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScheduleResponseEntityImplToJson(
      this,
    );
  }
}

abstract class _ScheduleResponseEntity implements ScheduleResponseEntity {
  const factory _ScheduleResponseEntity(
      {final String? status,
      final String? message,
      final List<ScheduleEntity>? data}) = _$ScheduleResponseEntityImpl;

  factory _ScheduleResponseEntity.fromJson(Map<String, dynamic> json) =
      _$ScheduleResponseEntityImpl.fromJson;

  @override
  String? get status;
  @override
  String? get message;
  @override
  List<ScheduleEntity>? get data;

  /// Create a copy of ScheduleResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleResponseEntityImplCopyWith<_$ScheduleResponseEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
