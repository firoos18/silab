// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'practicums_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PracticumsEntity _$PracticumsEntityFromJson(Map<String, dynamic> json) {
  return _PracticumsEntity.fromJson(json);
}

/// @nodoc
mixin _$PracticumsEntity {
  String? get subject_name => throw _privateConstructorUsedError;
  String? get subject_class => throw _privateConstructorUsedError;
  String? get session => throw _privateConstructorUsedError;

  /// Serializes this PracticumsEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PracticumsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PracticumsEntityCopyWith<PracticumsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PracticumsEntityCopyWith<$Res> {
  factory $PracticumsEntityCopyWith(
          PracticumsEntity value, $Res Function(PracticumsEntity) then) =
      _$PracticumsEntityCopyWithImpl<$Res, PracticumsEntity>;
  @useResult
  $Res call({String? subject_name, String? subject_class, String? session});
}

/// @nodoc
class _$PracticumsEntityCopyWithImpl<$Res, $Val extends PracticumsEntity>
    implements $PracticumsEntityCopyWith<$Res> {
  _$PracticumsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PracticumsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subject_name = freezed,
    Object? subject_class = freezed,
    Object? session = freezed,
  }) {
    return _then(_value.copyWith(
      subject_name: freezed == subject_name
          ? _value.subject_name
          : subject_name // ignore: cast_nullable_to_non_nullable
              as String?,
      subject_class: freezed == subject_class
          ? _value.subject_class
          : subject_class // ignore: cast_nullable_to_non_nullable
              as String?,
      session: freezed == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PracticumsEntityImplCopyWith<$Res>
    implements $PracticumsEntityCopyWith<$Res> {
  factory _$$PracticumsEntityImplCopyWith(_$PracticumsEntityImpl value,
          $Res Function(_$PracticumsEntityImpl) then) =
      __$$PracticumsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? subject_name, String? subject_class, String? session});
}

/// @nodoc
class __$$PracticumsEntityImplCopyWithImpl<$Res>
    extends _$PracticumsEntityCopyWithImpl<$Res, _$PracticumsEntityImpl>
    implements _$$PracticumsEntityImplCopyWith<$Res> {
  __$$PracticumsEntityImplCopyWithImpl(_$PracticumsEntityImpl _value,
      $Res Function(_$PracticumsEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of PracticumsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subject_name = freezed,
    Object? subject_class = freezed,
    Object? session = freezed,
  }) {
    return _then(_$PracticumsEntityImpl(
      subject_name: freezed == subject_name
          ? _value.subject_name
          : subject_name // ignore: cast_nullable_to_non_nullable
              as String?,
      subject_class: freezed == subject_class
          ? _value.subject_class
          : subject_class // ignore: cast_nullable_to_non_nullable
              as String?,
      session: freezed == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PracticumsEntityImpl implements _PracticumsEntity {
  const _$PracticumsEntityImpl(
      {this.subject_name, this.subject_class, this.session});

  factory _$PracticumsEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PracticumsEntityImplFromJson(json);

  @override
  final String? subject_name;
  @override
  final String? subject_class;
  @override
  final String? session;

  @override
  String toString() {
    return 'PracticumsEntity(subject_name: $subject_name, subject_class: $subject_class, session: $session)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PracticumsEntityImpl &&
            (identical(other.subject_name, subject_name) ||
                other.subject_name == subject_name) &&
            (identical(other.subject_class, subject_class) ||
                other.subject_class == subject_class) &&
            (identical(other.session, session) || other.session == session));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, subject_name, subject_class, session);

  /// Create a copy of PracticumsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PracticumsEntityImplCopyWith<_$PracticumsEntityImpl> get copyWith =>
      __$$PracticumsEntityImplCopyWithImpl<_$PracticumsEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PracticumsEntityImplToJson(
      this,
    );
  }
}

abstract class _PracticumsEntity implements PracticumsEntity {
  const factory _PracticumsEntity(
      {final String? subject_name,
      final String? subject_class,
      final String? session}) = _$PracticumsEntityImpl;

  factory _PracticumsEntity.fromJson(Map<String, dynamic> json) =
      _$PracticumsEntityImpl.fromJson;

  @override
  String? get subject_name;
  @override
  String? get subject_class;
  @override
  String? get session;

  /// Create a copy of PracticumsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PracticumsEntityImplCopyWith<_$PracticumsEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
