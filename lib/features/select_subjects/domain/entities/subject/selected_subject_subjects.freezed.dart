// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selected_subject_subjects.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SelectedSubjectSubjectsEntity _$SelectedSubjectSubjectsEntityFromJson(
    Map<String, dynamic> json) {
  return _SelectedSubjectSubjectsEntity.fromJson(json);
}

/// @nodoc
mixin _$SelectedSubjectSubjectsEntity {
  String? get subject_name => throw _privateConstructorUsedError;
  String? get semester => throw _privateConstructorUsedError;

  /// Serializes this SelectedSubjectSubjectsEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SelectedSubjectSubjectsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SelectedSubjectSubjectsEntityCopyWith<SelectedSubjectSubjectsEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedSubjectSubjectsEntityCopyWith<$Res> {
  factory $SelectedSubjectSubjectsEntityCopyWith(
          SelectedSubjectSubjectsEntity value,
          $Res Function(SelectedSubjectSubjectsEntity) then) =
      _$SelectedSubjectSubjectsEntityCopyWithImpl<$Res,
          SelectedSubjectSubjectsEntity>;
  @useResult
  $Res call({String? subject_name, String? semester});
}

/// @nodoc
class _$SelectedSubjectSubjectsEntityCopyWithImpl<$Res,
        $Val extends SelectedSubjectSubjectsEntity>
    implements $SelectedSubjectSubjectsEntityCopyWith<$Res> {
  _$SelectedSubjectSubjectsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SelectedSubjectSubjectsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subject_name = freezed,
    Object? semester = freezed,
  }) {
    return _then(_value.copyWith(
      subject_name: freezed == subject_name
          ? _value.subject_name
          : subject_name // ignore: cast_nullable_to_non_nullable
              as String?,
      semester: freezed == semester
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SelectedSubjectSubjectsEntityImplCopyWith<$Res>
    implements $SelectedSubjectSubjectsEntityCopyWith<$Res> {
  factory _$$SelectedSubjectSubjectsEntityImplCopyWith(
          _$SelectedSubjectSubjectsEntityImpl value,
          $Res Function(_$SelectedSubjectSubjectsEntityImpl) then) =
      __$$SelectedSubjectSubjectsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? subject_name, String? semester});
}

/// @nodoc
class __$$SelectedSubjectSubjectsEntityImplCopyWithImpl<$Res>
    extends _$SelectedSubjectSubjectsEntityCopyWithImpl<$Res,
        _$SelectedSubjectSubjectsEntityImpl>
    implements _$$SelectedSubjectSubjectsEntityImplCopyWith<$Res> {
  __$$SelectedSubjectSubjectsEntityImplCopyWithImpl(
      _$SelectedSubjectSubjectsEntityImpl _value,
      $Res Function(_$SelectedSubjectSubjectsEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of SelectedSubjectSubjectsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subject_name = freezed,
    Object? semester = freezed,
  }) {
    return _then(_$SelectedSubjectSubjectsEntityImpl(
      subject_name: freezed == subject_name
          ? _value.subject_name
          : subject_name // ignore: cast_nullable_to_non_nullable
              as String?,
      semester: freezed == semester
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SelectedSubjectSubjectsEntityImpl
    implements _SelectedSubjectSubjectsEntity {
  const _$SelectedSubjectSubjectsEntityImpl({this.subject_name, this.semester});

  factory _$SelectedSubjectSubjectsEntityImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SelectedSubjectSubjectsEntityImplFromJson(json);

  @override
  final String? subject_name;
  @override
  final String? semester;

  @override
  String toString() {
    return 'SelectedSubjectSubjectsEntity(subject_name: $subject_name, semester: $semester)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedSubjectSubjectsEntityImpl &&
            (identical(other.subject_name, subject_name) ||
                other.subject_name == subject_name) &&
            (identical(other.semester, semester) ||
                other.semester == semester));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, subject_name, semester);

  /// Create a copy of SelectedSubjectSubjectsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedSubjectSubjectsEntityImplCopyWith<
          _$SelectedSubjectSubjectsEntityImpl>
      get copyWith => __$$SelectedSubjectSubjectsEntityImplCopyWithImpl<
          _$SelectedSubjectSubjectsEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SelectedSubjectSubjectsEntityImplToJson(
      this,
    );
  }
}

abstract class _SelectedSubjectSubjectsEntity
    implements SelectedSubjectSubjectsEntity {
  const factory _SelectedSubjectSubjectsEntity(
      {final String? subject_name,
      final String? semester}) = _$SelectedSubjectSubjectsEntityImpl;

  factory _SelectedSubjectSubjectsEntity.fromJson(Map<String, dynamic> json) =
      _$SelectedSubjectSubjectsEntityImpl.fromJson;

  @override
  String? get subject_name;
  @override
  String? get semester;

  /// Create a copy of SelectedSubjectSubjectsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectedSubjectSubjectsEntityImplCopyWith<
          _$SelectedSubjectSubjectsEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
