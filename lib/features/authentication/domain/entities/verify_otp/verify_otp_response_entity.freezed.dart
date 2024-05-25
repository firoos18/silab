// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_otp_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VerifyOtpResponseEntity _$VerifyOtpResponseEntityFromJson(
    Map<String, dynamic> json) {
  return _VerifyOtpResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$VerifyOtpResponseEntity {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifyOtpResponseEntityCopyWith<VerifyOtpResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyOtpResponseEntityCopyWith<$Res> {
  factory $VerifyOtpResponseEntityCopyWith(VerifyOtpResponseEntity value,
          $Res Function(VerifyOtpResponseEntity) then) =
      _$VerifyOtpResponseEntityCopyWithImpl<$Res, VerifyOtpResponseEntity>;
  @useResult
  $Res call({int? status, String? message});
}

/// @nodoc
class _$VerifyOtpResponseEntityCopyWithImpl<$Res,
        $Val extends VerifyOtpResponseEntity>
    implements $VerifyOtpResponseEntityCopyWith<$Res> {
  _$VerifyOtpResponseEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$VerifyOtpResponseEntityImplCopyWith<$Res>
    implements $VerifyOtpResponseEntityCopyWith<$Res> {
  factory _$$VerifyOtpResponseEntityImplCopyWith(
          _$VerifyOtpResponseEntityImpl value,
          $Res Function(_$VerifyOtpResponseEntityImpl) then) =
      __$$VerifyOtpResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message});
}

/// @nodoc
class __$$VerifyOtpResponseEntityImplCopyWithImpl<$Res>
    extends _$VerifyOtpResponseEntityCopyWithImpl<$Res,
        _$VerifyOtpResponseEntityImpl>
    implements _$$VerifyOtpResponseEntityImplCopyWith<$Res> {
  __$$VerifyOtpResponseEntityImplCopyWithImpl(
      _$VerifyOtpResponseEntityImpl _value,
      $Res Function(_$VerifyOtpResponseEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$VerifyOtpResponseEntityImpl(
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
class _$VerifyOtpResponseEntityImpl implements _VerifyOtpResponseEntity {
  const _$VerifyOtpResponseEntityImpl({this.status, this.message});

  factory _$VerifyOtpResponseEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifyOtpResponseEntityImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;

  @override
  String toString() {
    return 'VerifyOtpResponseEntity(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyOtpResponseEntityImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyOtpResponseEntityImplCopyWith<_$VerifyOtpResponseEntityImpl>
      get copyWith => __$$VerifyOtpResponseEntityImplCopyWithImpl<
          _$VerifyOtpResponseEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyOtpResponseEntityImplToJson(
      this,
    );
  }
}

abstract class _VerifyOtpResponseEntity implements VerifyOtpResponseEntity {
  const factory _VerifyOtpResponseEntity(
      {final int? status,
      final String? message}) = _$VerifyOtpResponseEntityImpl;

  factory _VerifyOtpResponseEntity.fromJson(Map<String, dynamic> json) =
      _$VerifyOtpResponseEntityImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$VerifyOtpResponseEntityImplCopyWith<_$VerifyOtpResponseEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
