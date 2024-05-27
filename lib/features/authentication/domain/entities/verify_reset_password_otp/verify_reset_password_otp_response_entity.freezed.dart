// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_reset_password_otp_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VerifyResetPasswordOtpResponseEntity
    _$VerifyResetPasswordOtpResponseEntityFromJson(Map<String, dynamic> json) {
  return _VerifyResetPasswordOtpResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$VerifyResetPasswordOtpResponseEntity {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifyResetPasswordOtpResponseEntityCopyWith<
          VerifyResetPasswordOtpResponseEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyResetPasswordOtpResponseEntityCopyWith<$Res> {
  factory $VerifyResetPasswordOtpResponseEntityCopyWith(
          VerifyResetPasswordOtpResponseEntity value,
          $Res Function(VerifyResetPasswordOtpResponseEntity) then) =
      _$VerifyResetPasswordOtpResponseEntityCopyWithImpl<$Res,
          VerifyResetPasswordOtpResponseEntity>;
  @useResult
  $Res call({int? status, String? message});
}

/// @nodoc
class _$VerifyResetPasswordOtpResponseEntityCopyWithImpl<$Res,
        $Val extends VerifyResetPasswordOtpResponseEntity>
    implements $VerifyResetPasswordOtpResponseEntityCopyWith<$Res> {
  _$VerifyResetPasswordOtpResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerifyResetPasswordOtpResponseEntityImplCopyWith<$Res>
    implements $VerifyResetPasswordOtpResponseEntityCopyWith<$Res> {
  factory _$$VerifyResetPasswordOtpResponseEntityImplCopyWith(
          _$VerifyResetPasswordOtpResponseEntityImpl value,
          $Res Function(_$VerifyResetPasswordOtpResponseEntityImpl) then) =
      __$$VerifyResetPasswordOtpResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message});
}

/// @nodoc
class __$$VerifyResetPasswordOtpResponseEntityImplCopyWithImpl<$Res>
    extends _$VerifyResetPasswordOtpResponseEntityCopyWithImpl<$Res,
        _$VerifyResetPasswordOtpResponseEntityImpl>
    implements _$$VerifyResetPasswordOtpResponseEntityImplCopyWith<$Res> {
  __$$VerifyResetPasswordOtpResponseEntityImplCopyWithImpl(
      _$VerifyResetPasswordOtpResponseEntityImpl _value,
      $Res Function(_$VerifyResetPasswordOtpResponseEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$VerifyResetPasswordOtpResponseEntityImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerifyResetPasswordOtpResponseEntityImpl
    implements _VerifyResetPasswordOtpResponseEntity {
  const _$VerifyResetPasswordOtpResponseEntityImpl({this.status, this.message});

  factory _$VerifyResetPasswordOtpResponseEntityImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$VerifyResetPasswordOtpResponseEntityImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;

  @override
  String toString() {
    return 'VerifyResetPasswordOtpResponseEntity(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyResetPasswordOtpResponseEntityImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyResetPasswordOtpResponseEntityImplCopyWith<
          _$VerifyResetPasswordOtpResponseEntityImpl>
      get copyWith => __$$VerifyResetPasswordOtpResponseEntityImplCopyWithImpl<
          _$VerifyResetPasswordOtpResponseEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyResetPasswordOtpResponseEntityImplToJson(
      this,
    );
  }
}

abstract class _VerifyResetPasswordOtpResponseEntity
    implements VerifyResetPasswordOtpResponseEntity {
  const factory _VerifyResetPasswordOtpResponseEntity(
      {final int? status,
      final String? message}) = _$VerifyResetPasswordOtpResponseEntityImpl;

  factory _VerifyResetPasswordOtpResponseEntity.fromJson(
          Map<String, dynamic> json) =
      _$VerifyResetPasswordOtpResponseEntityImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$VerifyResetPasswordOtpResponseEntityImplCopyWith<
          _$VerifyResetPasswordOtpResponseEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
