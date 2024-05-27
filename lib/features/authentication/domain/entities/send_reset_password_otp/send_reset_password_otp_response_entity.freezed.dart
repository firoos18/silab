// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_reset_password_otp_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SendResetPasswordOtpResponseEntity _$SendResetPasswordOtpResponseEntityFromJson(
    Map<String, dynamic> json) {
  return _SendResetPasswordOtpResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$SendResetPasswordOtpResponseEntity {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  SendOtpEntity? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendResetPasswordOtpResponseEntityCopyWith<
          SendResetPasswordOtpResponseEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendResetPasswordOtpResponseEntityCopyWith<$Res> {
  factory $SendResetPasswordOtpResponseEntityCopyWith(
          SendResetPasswordOtpResponseEntity value,
          $Res Function(SendResetPasswordOtpResponseEntity) then) =
      _$SendResetPasswordOtpResponseEntityCopyWithImpl<$Res,
          SendResetPasswordOtpResponseEntity>;
  @useResult
  $Res call({int? status, String? message, SendOtpEntity? data});

  $SendOtpEntityCopyWith<$Res>? get data;
}

/// @nodoc
class _$SendResetPasswordOtpResponseEntityCopyWithImpl<$Res,
        $Val extends SendResetPasswordOtpResponseEntity>
    implements $SendResetPasswordOtpResponseEntityCopyWith<$Res> {
  _$SendResetPasswordOtpResponseEntityCopyWithImpl(this._value, this._then);

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
              as SendOtpEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SendOtpEntityCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $SendOtpEntityCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SendResetPasswordOtpResponseEntityImplCopyWith<$Res>
    implements $SendResetPasswordOtpResponseEntityCopyWith<$Res> {
  factory _$$SendResetPasswordOtpResponseEntityImplCopyWith(
          _$SendResetPasswordOtpResponseEntityImpl value,
          $Res Function(_$SendResetPasswordOtpResponseEntityImpl) then) =
      __$$SendResetPasswordOtpResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, SendOtpEntity? data});

  @override
  $SendOtpEntityCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SendResetPasswordOtpResponseEntityImplCopyWithImpl<$Res>
    extends _$SendResetPasswordOtpResponseEntityCopyWithImpl<$Res,
        _$SendResetPasswordOtpResponseEntityImpl>
    implements _$$SendResetPasswordOtpResponseEntityImplCopyWith<$Res> {
  __$$SendResetPasswordOtpResponseEntityImplCopyWithImpl(
      _$SendResetPasswordOtpResponseEntityImpl _value,
      $Res Function(_$SendResetPasswordOtpResponseEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$SendResetPasswordOtpResponseEntityImpl(
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
              as SendOtpEntity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SendResetPasswordOtpResponseEntityImpl
    implements _SendResetPasswordOtpResponseEntity {
  const _$SendResetPasswordOtpResponseEntityImpl(
      {this.status, this.message, this.data});

  factory _$SendResetPasswordOtpResponseEntityImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SendResetPasswordOtpResponseEntityImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final SendOtpEntity? data;

  @override
  String toString() {
    return 'SendResetPasswordOtpResponseEntity(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendResetPasswordOtpResponseEntityImpl &&
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
  _$$SendResetPasswordOtpResponseEntityImplCopyWith<
          _$SendResetPasswordOtpResponseEntityImpl>
      get copyWith => __$$SendResetPasswordOtpResponseEntityImplCopyWithImpl<
          _$SendResetPasswordOtpResponseEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendResetPasswordOtpResponseEntityImplToJson(
      this,
    );
  }
}

abstract class _SendResetPasswordOtpResponseEntity
    implements SendResetPasswordOtpResponseEntity {
  const factory _SendResetPasswordOtpResponseEntity(
      {final int? status,
      final String? message,
      final SendOtpEntity? data}) = _$SendResetPasswordOtpResponseEntityImpl;

  factory _SendResetPasswordOtpResponseEntity.fromJson(
          Map<String, dynamic> json) =
      _$SendResetPasswordOtpResponseEntityImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  SendOtpEntity? get data;
  @override
  @JsonKey(ignore: true)
  _$$SendResetPasswordOtpResponseEntityImplCopyWith<
          _$SendResetPasswordOtpResponseEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
