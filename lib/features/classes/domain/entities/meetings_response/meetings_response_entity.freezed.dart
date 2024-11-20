// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meetings_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MeetingsResponseEntity _$MeetingsResponseEntityFromJson(
    Map<String, dynamic> json) {
  return _MeetingsResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$MeetingsResponseEntity {
  String? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<MeetingsEntity>? get data => throw _privateConstructorUsedError;

  /// Serializes this MeetingsResponseEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MeetingsResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MeetingsResponseEntityCopyWith<MeetingsResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetingsResponseEntityCopyWith<$Res> {
  factory $MeetingsResponseEntityCopyWith(MeetingsResponseEntity value,
          $Res Function(MeetingsResponseEntity) then) =
      _$MeetingsResponseEntityCopyWithImpl<$Res, MeetingsResponseEntity>;
  @useResult
  $Res call({String? status, String? message, List<MeetingsEntity>? data});
}

/// @nodoc
class _$MeetingsResponseEntityCopyWithImpl<$Res,
        $Val extends MeetingsResponseEntity>
    implements $MeetingsResponseEntityCopyWith<$Res> {
  _$MeetingsResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MeetingsResponseEntity
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
              as List<MeetingsEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MeetingsResponseEntityImplCopyWith<$Res>
    implements $MeetingsResponseEntityCopyWith<$Res> {
  factory _$$MeetingsResponseEntityImplCopyWith(
          _$MeetingsResponseEntityImpl value,
          $Res Function(_$MeetingsResponseEntityImpl) then) =
      __$$MeetingsResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status, String? message, List<MeetingsEntity>? data});
}

/// @nodoc
class __$$MeetingsResponseEntityImplCopyWithImpl<$Res>
    extends _$MeetingsResponseEntityCopyWithImpl<$Res,
        _$MeetingsResponseEntityImpl>
    implements _$$MeetingsResponseEntityImplCopyWith<$Res> {
  __$$MeetingsResponseEntityImplCopyWithImpl(
      _$MeetingsResponseEntityImpl _value,
      $Res Function(_$MeetingsResponseEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of MeetingsResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$MeetingsResponseEntityImpl(
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
              as List<MeetingsEntity>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeetingsResponseEntityImpl implements _MeetingsResponseEntity {
  const _$MeetingsResponseEntityImpl(
      {this.status, this.message, final List<MeetingsEntity>? data})
      : _data = data;

  factory _$MeetingsResponseEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeetingsResponseEntityImplFromJson(json);

  @override
  final String? status;
  @override
  final String? message;
  final List<MeetingsEntity>? _data;
  @override
  List<MeetingsEntity>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MeetingsResponseEntity(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeetingsResponseEntityImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, message, const DeepCollectionEquality().hash(_data));

  /// Create a copy of MeetingsResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeetingsResponseEntityImplCopyWith<_$MeetingsResponseEntityImpl>
      get copyWith => __$$MeetingsResponseEntityImplCopyWithImpl<
          _$MeetingsResponseEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeetingsResponseEntityImplToJson(
      this,
    );
  }
}

abstract class _MeetingsResponseEntity implements MeetingsResponseEntity {
  const factory _MeetingsResponseEntity(
      {final String? status,
      final String? message,
      final List<MeetingsEntity>? data}) = _$MeetingsResponseEntityImpl;

  factory _MeetingsResponseEntity.fromJson(Map<String, dynamic> json) =
      _$MeetingsResponseEntityImpl.fromJson;

  @override
  String? get status;
  @override
  String? get message;
  @override
  List<MeetingsEntity>? get data;

  /// Create a copy of MeetingsResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeetingsResponseEntityImplCopyWith<_$MeetingsResponseEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
