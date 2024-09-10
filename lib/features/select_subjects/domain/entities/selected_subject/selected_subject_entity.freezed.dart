// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selected_subject_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SelectedSubjectEntity _$SelectedSubjectEntityFromJson(
    Map<String, dynamic> json) {
  return _SelectedSubjectEntity.fromJson(json);
}

/// @nodoc
mixin _$SelectedSubjectEntity {
  String? get id => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  List<SelectedSubjectSubjectsEntity>? get subjects =>
      throw _privateConstructorUsedError;

  /// Serializes this SelectedSubjectEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SelectedSubjectEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SelectedSubjectEntityCopyWith<SelectedSubjectEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedSubjectEntityCopyWith<$Res> {
  factory $SelectedSubjectEntityCopyWith(SelectedSubjectEntity value,
          $Res Function(SelectedSubjectEntity) then) =
      _$SelectedSubjectEntityCopyWithImpl<$Res, SelectedSubjectEntity>;
  @useResult
  $Res call(
      {String? id,
      String? userId,
      List<SelectedSubjectSubjectsEntity>? subjects});
}

/// @nodoc
class _$SelectedSubjectEntityCopyWithImpl<$Res,
        $Val extends SelectedSubjectEntity>
    implements $SelectedSubjectEntityCopyWith<$Res> {
  _$SelectedSubjectEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SelectedSubjectEntity
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
              as List<SelectedSubjectSubjectsEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SelectedSubjectEntityImplCopyWith<$Res>
    implements $SelectedSubjectEntityCopyWith<$Res> {
  factory _$$SelectedSubjectEntityImplCopyWith(
          _$SelectedSubjectEntityImpl value,
          $Res Function(_$SelectedSubjectEntityImpl) then) =
      __$$SelectedSubjectEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? userId,
      List<SelectedSubjectSubjectsEntity>? subjects});
}

/// @nodoc
class __$$SelectedSubjectEntityImplCopyWithImpl<$Res>
    extends _$SelectedSubjectEntityCopyWithImpl<$Res,
        _$SelectedSubjectEntityImpl>
    implements _$$SelectedSubjectEntityImplCopyWith<$Res> {
  __$$SelectedSubjectEntityImplCopyWithImpl(_$SelectedSubjectEntityImpl _value,
      $Res Function(_$SelectedSubjectEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of SelectedSubjectEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? subjects = freezed,
  }) {
    return _then(_$SelectedSubjectEntityImpl(
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
              as List<SelectedSubjectSubjectsEntity>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SelectedSubjectEntityImpl implements _SelectedSubjectEntity {
  const _$SelectedSubjectEntityImpl(
      {this.id,
      this.userId,
      final List<SelectedSubjectSubjectsEntity>? subjects})
      : _subjects = subjects;

  factory _$SelectedSubjectEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SelectedSubjectEntityImplFromJson(json);

  @override
  final String? id;
  @override
  final String? userId;
  final List<SelectedSubjectSubjectsEntity>? _subjects;
  @override
  List<SelectedSubjectSubjectsEntity>? get subjects {
    final value = _subjects;
    if (value == null) return null;
    if (_subjects is EqualUnmodifiableListView) return _subjects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SelectedSubjectEntity(id: $id, userId: $userId, subjects: $subjects)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedSubjectEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality().equals(other._subjects, _subjects));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, userId, const DeepCollectionEquality().hash(_subjects));

  /// Create a copy of SelectedSubjectEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedSubjectEntityImplCopyWith<_$SelectedSubjectEntityImpl>
      get copyWith => __$$SelectedSubjectEntityImplCopyWithImpl<
          _$SelectedSubjectEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SelectedSubjectEntityImplToJson(
      this,
    );
  }
}

abstract class _SelectedSubjectEntity implements SelectedSubjectEntity {
  const factory _SelectedSubjectEntity(
          {final String? id,
          final String? userId,
          final List<SelectedSubjectSubjectsEntity>? subjects}) =
      _$SelectedSubjectEntityImpl;

  factory _SelectedSubjectEntity.fromJson(Map<String, dynamic> json) =
      _$SelectedSubjectEntityImpl.fromJson;

  @override
  String? get id;
  @override
  String? get userId;
  @override
  List<SelectedSubjectSubjectsEntity>? get subjects;

  /// Create a copy of SelectedSubjectEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectedSubjectEntityImplCopyWith<_$SelectedSubjectEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
