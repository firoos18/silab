// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_subject_subjects_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddSubjectSubjectsEntity _$AddSubjectSubjectsEntityFromJson(
    Map<String, dynamic> json) {
  return _AddSubjectSubjectsEntity.fromJson(json);
}

/// @nodoc
mixin _$AddSubjectSubjectsEntity {
  String? get id => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  List<String>? get subjects => throw _privateConstructorUsedError;

  /// Serializes this AddSubjectSubjectsEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddSubjectSubjectsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddSubjectSubjectsEntityCopyWith<AddSubjectSubjectsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddSubjectSubjectsEntityCopyWith<$Res> {
  factory $AddSubjectSubjectsEntityCopyWith(AddSubjectSubjectsEntity value,
          $Res Function(AddSubjectSubjectsEntity) then) =
      _$AddSubjectSubjectsEntityCopyWithImpl<$Res, AddSubjectSubjectsEntity>;
  @useResult
  $Res call({String? id, String? userId, List<String>? subjects});
}

/// @nodoc
class _$AddSubjectSubjectsEntityCopyWithImpl<$Res,
        $Val extends AddSubjectSubjectsEntity>
    implements $AddSubjectSubjectsEntityCopyWith<$Res> {
  _$AddSubjectSubjectsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddSubjectSubjectsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? subjects = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      subjects: freezed == subjects
          ? _value.subjects
          : subjects // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddSubjectSubjectsEntityImplCopyWith<$Res>
    implements $AddSubjectSubjectsEntityCopyWith<$Res> {
  factory _$$AddSubjectSubjectsEntityImplCopyWith(
          _$AddSubjectSubjectsEntityImpl value,
          $Res Function(_$AddSubjectSubjectsEntityImpl) then) =
      __$$AddSubjectSubjectsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? userId, List<String>? subjects});
}

/// @nodoc
class __$$AddSubjectSubjectsEntityImplCopyWithImpl<$Res>
    extends _$AddSubjectSubjectsEntityCopyWithImpl<$Res,
        _$AddSubjectSubjectsEntityImpl>
    implements _$$AddSubjectSubjectsEntityImplCopyWith<$Res> {
  __$$AddSubjectSubjectsEntityImplCopyWithImpl(
      _$AddSubjectSubjectsEntityImpl _value,
      $Res Function(_$AddSubjectSubjectsEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddSubjectSubjectsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? subjects = freezed,
  }) {
    return _then(_$AddSubjectSubjectsEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      subjects: freezed == subjects
          ? _value._subjects
          : subjects // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddSubjectSubjectsEntityImpl implements _AddSubjectSubjectsEntity {
  const _$AddSubjectSubjectsEntityImpl(
      {this.id, this.userId, final List<String>? subjects})
      : _subjects = subjects;

  factory _$AddSubjectSubjectsEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddSubjectSubjectsEntityImplFromJson(json);

  @override
  final String? id;
  @override
  final String? userId;
  final List<String>? _subjects;
  @override
  List<String>? get subjects {
    final value = _subjects;
    if (value == null) return null;
    if (_subjects is EqualUnmodifiableListView) return _subjects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AddSubjectSubjectsEntity(id: $id, userId: $userId, subjects: $subjects)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddSubjectSubjectsEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality().equals(other._subjects, _subjects));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, userId, const DeepCollectionEquality().hash(_subjects));

  /// Create a copy of AddSubjectSubjectsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddSubjectSubjectsEntityImplCopyWith<_$AddSubjectSubjectsEntityImpl>
      get copyWith => __$$AddSubjectSubjectsEntityImplCopyWithImpl<
          _$AddSubjectSubjectsEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddSubjectSubjectsEntityImplToJson(
      this,
    );
  }
}

abstract class _AddSubjectSubjectsEntity implements AddSubjectSubjectsEntity {
  const factory _AddSubjectSubjectsEntity(
      {final String? id,
      final String? userId,
      final List<String>? subjects}) = _$AddSubjectSubjectsEntityImpl;

  factory _AddSubjectSubjectsEntity.fromJson(Map<String, dynamic> json) =
      _$AddSubjectSubjectsEntityImpl.fromJson;

  @override
  String? get id;
  @override
  String? get userId;
  @override
  List<String>? get subjects;

  /// Create a copy of AddSubjectSubjectsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddSubjectSubjectsEntityImplCopyWith<_$AddSubjectSubjectsEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
