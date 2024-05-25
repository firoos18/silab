// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_data_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RegisterDataEntity _$RegisterDataEntityFromJson(Map<String, dynamic> json) {
  return _RegisterDataEntity.fromJson(json);
}

/// @nodoc
mixin _$RegisterDataEntity {
  String? get userId => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterDataEntityCopyWith<RegisterDataEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterDataEntityCopyWith<$Res> {
  factory $RegisterDataEntityCopyWith(
          RegisterDataEntity value, $Res Function(RegisterDataEntity) then) =
      _$RegisterDataEntityCopyWithImpl<$Res, RegisterDataEntity>;
  @useResult
  $Res call({String? userId, String? email});
}

/// @nodoc
class _$RegisterDataEntityCopyWithImpl<$Res, $Val extends RegisterDataEntity>
    implements $RegisterDataEntityCopyWith<$Res> {
  _$RegisterDataEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$RegisterDataEntityImplCopyWith<$Res>
    implements $RegisterDataEntityCopyWith<$Res> {
  factory _$$RegisterDataEntityImplCopyWith(_$RegisterDataEntityImpl value,
          $Res Function(_$RegisterDataEntityImpl) then) =
      __$$RegisterDataEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? userId, String? email});
}

/// @nodoc
class __$$RegisterDataEntityImplCopyWithImpl<$Res>
    extends _$RegisterDataEntityCopyWithImpl<$Res, _$RegisterDataEntityImpl>
    implements _$$RegisterDataEntityImplCopyWith<$Res> {
  __$$RegisterDataEntityImplCopyWithImpl(_$RegisterDataEntityImpl _value,
      $Res Function(_$RegisterDataEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? email = freezed,
  }) {
    return _then(_$RegisterDataEntityImpl(
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
class _$RegisterDataEntityImpl implements _RegisterDataEntity {
  const _$RegisterDataEntityImpl({this.userId, this.email});

  factory _$RegisterDataEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterDataEntityImplFromJson(json);

  @override
  final String? userId;
  @override
  final String? email;

  @override
  String toString() {
    return 'RegisterDataEntity(userId: $userId, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterDataEntityImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterDataEntityImplCopyWith<_$RegisterDataEntityImpl> get copyWith =>
      __$$RegisterDataEntityImplCopyWithImpl<_$RegisterDataEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterDataEntityImplToJson(
      this,
    );
  }
}

abstract class _RegisterDataEntity implements RegisterDataEntity {
  const factory _RegisterDataEntity(
      {final String? userId, final String? email}) = _$RegisterDataEntityImpl;

  factory _RegisterDataEntity.fromJson(Map<String, dynamic> json) =
      _$RegisterDataEntityImpl.fromJson;

  @override
  String? get userId;
  @override
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$$RegisterDataEntityImplCopyWith<_$RegisterDataEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
