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
  String? get id => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get nim => throw _privateConstructorUsedError;
  String? get fullname => throw _privateConstructorUsedError;
  List<String>? get role => throw _privateConstructorUsedError;
  bool? get paid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDetailEntityCopyWith<UserDetailEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailEntityCopyWith<$Res> {
  factory $UserDetailEntityCopyWith(
          UserDetailEntity value, $Res Function(UserDetailEntity) then) =
      _$UserDetailEntityCopyWithImpl<$Res, UserDetailEntity>;
  @useResult
  $Res call(
      {String? id,
      String? email,
      String? nim,
      String? fullname,
      List<String>? role,
      bool? paid});
}

/// @nodoc
class _$UserDetailEntityCopyWithImpl<$Res, $Val extends UserDetailEntity>
    implements $UserDetailEntityCopyWith<$Res> {
  _$UserDetailEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? nim = freezed,
    Object? fullname = freezed,
    Object? role = freezed,
    Object? paid = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      nim: freezed == nim
          ? _value.nim
          : nim // ignore: cast_nullable_to_non_nullable
              as String?,
      fullname: freezed == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      paid: freezed == paid
          ? _value.paid
          : paid // ignore: cast_nullable_to_non_nullable
              as bool?,
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
  $Res call(
      {String? id,
      String? email,
      String? nim,
      String? fullname,
      List<String>? role,
      bool? paid});
}

/// @nodoc
class __$$UserDetailEntityImplCopyWithImpl<$Res>
    extends _$UserDetailEntityCopyWithImpl<$Res, _$UserDetailEntityImpl>
    implements _$$UserDetailEntityImplCopyWith<$Res> {
  __$$UserDetailEntityImplCopyWithImpl(_$UserDetailEntityImpl _value,
      $Res Function(_$UserDetailEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? nim = freezed,
    Object? fullname = freezed,
    Object? role = freezed,
    Object? paid = freezed,
  }) {
    return _then(_$UserDetailEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      nim: freezed == nim
          ? _value.nim
          : nim // ignore: cast_nullable_to_non_nullable
              as String?,
      fullname: freezed == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value._role
          : role // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      paid: freezed == paid
          ? _value.paid
          : paid // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDetailEntityImpl implements _UserDetailEntity {
  const _$UserDetailEntityImpl(
      {this.id,
      this.email,
      this.nim,
      this.fullname,
      final List<String>? role,
      this.paid})
      : _role = role;

  factory _$UserDetailEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDetailEntityImplFromJson(json);

  @override
  final String? id;
  @override
  final String? email;
  @override
  final String? nim;
  @override
  final String? fullname;
  final List<String>? _role;
  @override
  List<String>? get role {
    final value = _role;
    if (value == null) return null;
    if (_role is EqualUnmodifiableListView) return _role;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? paid;

  @override
  String toString() {
    return 'UserDetailEntity(id: $id, email: $email, nim: $nim, fullname: $fullname, role: $role, paid: $paid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDetailEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.nim, nim) || other.nim == nim) &&
            (identical(other.fullname, fullname) ||
                other.fullname == fullname) &&
            const DeepCollectionEquality().equals(other._role, _role) &&
            (identical(other.paid, paid) || other.paid == paid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, email, nim, fullname,
      const DeepCollectionEquality().hash(_role), paid);

  @JsonKey(ignore: true)
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
      {final String? id,
      final String? email,
      final String? nim,
      final String? fullname,
      final List<String>? role,
      final bool? paid}) = _$UserDetailEntityImpl;

  factory _UserDetailEntity.fromJson(Map<String, dynamic> json) =
      _$UserDetailEntityImpl.fromJson;

  @override
  String? get id;
  @override
  String? get email;
  @override
  String? get nim;
  @override
  String? get fullname;
  @override
  List<String>? get role;
  @override
  bool? get paid;
  @override
  @JsonKey(ignore: true)
  _$$UserDetailEntityImplCopyWith<_$UserDetailEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}