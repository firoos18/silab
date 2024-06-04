// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_data_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginDataEntity _$LoginDataEntityFromJson(Map<String, dynamic> json) {
  return _LoginDataEntity.fromJson(json);
}

/// @nodoc
mixin _$LoginDataEntity {
  String? get email => throw _privateConstructorUsedError;
  String? get nim => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginDataEntityCopyWith<LoginDataEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginDataEntityCopyWith<$Res> {
  factory $LoginDataEntityCopyWith(
          LoginDataEntity value, $Res Function(LoginDataEntity) then) =
      _$LoginDataEntityCopyWithImpl<$Res, LoginDataEntity>;
  @useResult
  $Res call({String? email, String? nim, String? token});
}

/// @nodoc
class _$LoginDataEntityCopyWithImpl<$Res, $Val extends LoginDataEntity>
    implements $LoginDataEntityCopyWith<$Res> {
  _$LoginDataEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? nim = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      nim: freezed == nim
          ? _value.nim
          : nim // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginDataEntityImplCopyWith<$Res>
    implements $LoginDataEntityCopyWith<$Res> {
  factory _$$LoginDataEntityImplCopyWith(_$LoginDataEntityImpl value,
          $Res Function(_$LoginDataEntityImpl) then) =
      __$$LoginDataEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? email, String? nim, String? token});
}

/// @nodoc
class __$$LoginDataEntityImplCopyWithImpl<$Res>
    extends _$LoginDataEntityCopyWithImpl<$Res, _$LoginDataEntityImpl>
    implements _$$LoginDataEntityImplCopyWith<$Res> {
  __$$LoginDataEntityImplCopyWithImpl(
      _$LoginDataEntityImpl _value, $Res Function(_$LoginDataEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? nim = freezed,
    Object? token = freezed,
  }) {
    return _then(_$LoginDataEntityImpl(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      nim: freezed == nim
          ? _value.nim
          : nim // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginDataEntityImpl implements _LoginDataEntity {
  const _$LoginDataEntityImpl({this.email, this.nim, this.token});

  factory _$LoginDataEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginDataEntityImplFromJson(json);

  @override
  final String? email;
  @override
  final String? nim;
  @override
  final String? token;

  @override
  String toString() {
    return 'LoginDataEntity(email: $email, nim: $nim, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginDataEntityImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.nim, nim) || other.nim == nim) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, nim, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginDataEntityImplCopyWith<_$LoginDataEntityImpl> get copyWith =>
      __$$LoginDataEntityImplCopyWithImpl<_$LoginDataEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginDataEntityImplToJson(
      this,
    );
  }
}

abstract class _LoginDataEntity implements LoginDataEntity {
  const factory _LoginDataEntity(
      {final String? email,
      final String? nim,
      final String? token}) = _$LoginDataEntityImpl;

  factory _LoginDataEntity.fromJson(Map<String, dynamic> json) =
      _$LoginDataEntityImpl.fromJson;

  @override
  String? get email;
  @override
  String? get nim;
  @override
  String? get token;
  @override
  @JsonKey(ignore: true)
  _$$LoginDataEntityImplCopyWith<_$LoginDataEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
