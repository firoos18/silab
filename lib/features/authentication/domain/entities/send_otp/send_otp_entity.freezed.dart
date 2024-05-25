// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_otp_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SendOtpEntity _$SendOtpEntityFromJson(Map<String, dynamic> json) {
  return _SendOtpEntity.fromJson(json);
}

/// @nodoc
mixin _$SendOtpEntity {
  String? get userId => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendOtpEntityCopyWith<SendOtpEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendOtpEntityCopyWith<$Res> {
  factory $SendOtpEntityCopyWith(
          SendOtpEntity value, $Res Function(SendOtpEntity) then) =
      _$SendOtpEntityCopyWithImpl<$Res, SendOtpEntity>;
  @useResult
  $Res call({String? userId, String? email});
}

/// @nodoc
class _$SendOtpEntityCopyWithImpl<$Res, $Val extends SendOtpEntity>
    implements $SendOtpEntityCopyWith<$Res> {
  _$SendOtpEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendOtpEntityImplCopyWith<$Res>
    implements $SendOtpEntityCopyWith<$Res> {
  factory _$$SendOtpEntityImplCopyWith(
          _$SendOtpEntityImpl value, $Res Function(_$SendOtpEntityImpl) then) =
      __$$SendOtpEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? userId, String? email});
}

/// @nodoc
class __$$SendOtpEntityImplCopyWithImpl<$Res>
    extends _$SendOtpEntityCopyWithImpl<$Res, _$SendOtpEntityImpl>
    implements _$$SendOtpEntityImplCopyWith<$Res> {
  __$$SendOtpEntityImplCopyWithImpl(
      _$SendOtpEntityImpl _value, $Res Function(_$SendOtpEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? email = freezed,
  }) {
    return _then(_$SendOtpEntityImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SendOtpEntityImpl implements _SendOtpEntity {
  const _$SendOtpEntityImpl({this.userId, this.email});

  factory _$SendOtpEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendOtpEntityImplFromJson(json);

  @override
  final String? userId;
  @override
  final String? email;

  @override
  String toString() {
    return 'SendOtpEntity(userId: $userId, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendOtpEntityImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendOtpEntityImplCopyWith<_$SendOtpEntityImpl> get copyWith =>
      __$$SendOtpEntityImplCopyWithImpl<_$SendOtpEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendOtpEntityImplToJson(
      this,
    );
  }
}

abstract class _SendOtpEntity implements SendOtpEntity {
  const factory _SendOtpEntity({final String? userId, final String? email}) =
      _$SendOtpEntityImpl;

  factory _SendOtpEntity.fromJson(Map<String, dynamic> json) =
      _$SendOtpEntityImpl.fromJson;

  @override
  String? get userId;
  @override
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$$SendOtpEntityImplCopyWith<_$SendOtpEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
