// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_detail_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserDetailResponseEntity _$UserDetailResponseEntityFromJson(
    Map<String, dynamic> json) {
  return _UserDetailResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$UserDetailResponseEntity {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  UserDetailEntity? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDetailResponseEntityCopyWith<UserDetailResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailResponseEntityCopyWith<$Res> {
  factory $UserDetailResponseEntityCopyWith(UserDetailResponseEntity value,
          $Res Function(UserDetailResponseEntity) then) =
      _$UserDetailResponseEntityCopyWithImpl<$Res, UserDetailResponseEntity>;
  @useResult
  $Res call({int? status, String? message, UserDetailEntity? data});

  $UserDetailEntityCopyWith<$Res>? get data;
}

/// @nodoc
class _$UserDetailResponseEntityCopyWithImpl<$Res,
        $Val extends UserDetailResponseEntity>
    implements $UserDetailResponseEntityCopyWith<$Res> {
  _$UserDetailResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserDetailEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDetailEntityCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $UserDetailEntityCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserDetailResponseEntityImplCopyWith<$Res>
    implements $UserDetailResponseEntityCopyWith<$Res> {
  factory _$$UserDetailResponseEntityImplCopyWith(
          _$UserDetailResponseEntityImpl value,
          $Res Function(_$UserDetailResponseEntityImpl) then) =
      __$$UserDetailResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, UserDetailEntity? data});

  @override
  $UserDetailEntityCopyWith<$Res>? get data;
}

/// @nodoc
class __$$UserDetailResponseEntityImplCopyWithImpl<$Res>
    extends _$UserDetailResponseEntityCopyWithImpl<$Res,
        _$UserDetailResponseEntityImpl>
    implements _$$UserDetailResponseEntityImplCopyWith<$Res> {
  __$$UserDetailResponseEntityImplCopyWithImpl(
      _$UserDetailResponseEntityImpl _value,
      $Res Function(_$UserDetailResponseEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$UserDetailResponseEntityImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserDetailEntity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDetailResponseEntityImpl implements _UserDetailResponseEntity {
  const _$UserDetailResponseEntityImpl({this.status, this.message, this.data});

  factory _$UserDetailResponseEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDetailResponseEntityImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final UserDetailEntity? data;

  @override
  String toString() {
    return 'UserDetailResponseEntity(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDetailResponseEntityImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDetailResponseEntityImplCopyWith<_$UserDetailResponseEntityImpl>
      get copyWith => __$$UserDetailResponseEntityImplCopyWithImpl<
          _$UserDetailResponseEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDetailResponseEntityImplToJson(
      this,
    );
  }
}

abstract class _UserDetailResponseEntity implements UserDetailResponseEntity {
  const factory _UserDetailResponseEntity(
      {final int? status,
      final String? message,
      final UserDetailEntity? data}) = _$UserDetailResponseEntityImpl;

  factory _UserDetailResponseEntity.fromJson(Map<String, dynamic> json) =
      _$UserDetailResponseEntityImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  UserDetailEntity? get data;
  @override
  @JsonKey(ignore: true)
  _$$UserDetailResponseEntityImplCopyWith<_$UserDetailResponseEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
