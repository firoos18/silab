// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_detail_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserDetailEntity _$UserDetailEntityFromJson(Map<String, dynamic> json) {
  return _UserDetailEntity.fromJson(json);
}

/// @nodoc
mixin _$UserDetailEntity {
  String? get nim => throw _privateConstructorUsedError;
  String? get fullname => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;

  /// Serializes this UserDetailEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserDetailEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserDetailEntityCopyWith<UserDetailEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailEntityCopyWith<$Res> {
  factory $UserDetailEntityCopyWith(
          UserDetailEntity value, $Res Function(UserDetailEntity) then) =
      _$UserDetailEntityCopyWithImpl<$Res, UserDetailEntity>;
  @useResult
  $Res call({String? nim, String? fullname, String? email});
}

/// @nodoc
class _$UserDetailEntityCopyWithImpl<$Res, $Val extends UserDetailEntity>
    implements $UserDetailEntityCopyWith<$Res> {
  _$UserDetailEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserDetailEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nim = freezed,
    Object? fullname = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      nim: freezed == nim
          ? _value.nim
          : nim // ignore: cast_nullable_to_non_nullable
              as String?,
      fullname: freezed == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDetailEntityImplCopyWith<$Res>
    implements $UserDetailEntityCopyWith<$Res> {
  factory _$$UserDetailEntityImplCopyWith(_$UserDetailEntityImpl value,
          $Res Function(_$UserDetailEntityImpl) then) =
      __$$UserDetailEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? nim, String? fullname, String? email});
}

/// @nodoc
class __$$UserDetailEntityImplCopyWithImpl<$Res>
    extends _$UserDetailEntityCopyWithImpl<$Res, _$UserDetailEntityImpl>
    implements _$$UserDetailEntityImplCopyWith<$Res> {
  __$$UserDetailEntityImplCopyWithImpl(_$UserDetailEntityImpl _value,
      $Res Function(_$UserDetailEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserDetailEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nim = freezed,
    Object? fullname = freezed,
    Object? email = freezed,
  }) {
    return _then(_$UserDetailEntityImpl(
      nim: freezed == nim
          ? _value.nim
          : nim // ignore: cast_nullable_to_non_nullable
              as String?,
      fullname: freezed == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
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
class _$UserDetailEntityImpl implements _UserDetailEntity {
  const _$UserDetailEntityImpl({this.nim, this.fullname, this.email});

  factory _$UserDetailEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDetailEntityImplFromJson(json);

  @override
  final String? nim;
  @override
  final String? fullname;
  @override
  final String? email;

  @override
  String toString() {
    return 'UserDetailEntity(nim: $nim, fullname: $fullname, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDetailEntityImpl &&
            (identical(other.nim, nim) || other.nim == nim) &&
            (identical(other.fullname, fullname) ||
                other.fullname == fullname) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, nim, fullname, email);

  /// Create a copy of UserDetailEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDetailEntityImplCopyWith<_$UserDetailEntityImpl> get copyWith =>
      __$$UserDetailEntityImplCopyWithImpl<_$UserDetailEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDetailEntityImplToJson(
      this,
    );
  }
}

abstract class _UserDetailEntity implements UserDetailEntity {
  const factory _UserDetailEntity(
      {final String? nim,
      final String? fullname,
      final String? email}) = _$UserDetailEntityImpl;

  factory _UserDetailEntity.fromJson(Map<String, dynamic> json) =
      _$UserDetailEntityImpl.fromJson;

  @override
  String? get nim;
  @override
  String? get fullname;
  @override
  String? get email;

  /// Create a copy of UserDetailEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserDetailEntityImplCopyWith<_$UserDetailEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
