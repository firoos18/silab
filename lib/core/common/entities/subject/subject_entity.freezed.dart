// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subject_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubjectEntity _$SubjectEntityFromJson(Map<String, dynamic> json) {
  return _SubjectEntity.fromJson(json);
}

/// @nodoc
mixin _$SubjectEntity {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get lecturer => throw _privateConstructorUsedError;
  int? get semester => throw _privateConstructorUsedError;
  List<String>? get classes => throw _privateConstructorUsedError;

  /// Serializes this SubjectEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubjectEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubjectEntityCopyWith<SubjectEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubjectEntityCopyWith<$Res> {
  factory $SubjectEntityCopyWith(
          SubjectEntity value, $Res Function(SubjectEntity) then) =
      _$SubjectEntityCopyWithImpl<$Res, SubjectEntity>;
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? lecturer,
      int? semester,
      List<String>? classes});
}

/// @nodoc
class _$SubjectEntityCopyWithImpl<$Res, $Val extends SubjectEntity>
    implements $SubjectEntityCopyWith<$Res> {
  _$SubjectEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubjectEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? lecturer = freezed,
    Object? semester = freezed,
    Object? classes = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      lecturer: freezed == lecturer
          ? _value.lecturer
          : lecturer // ignore: cast_nullable_to_non_nullable
              as String?,
      semester: freezed == semester
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as int?,
      classes: freezed == classes
          ? _value.classes
          : classes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubjectEntityImplCopyWith<$Res>
    implements $SubjectEntityCopyWith<$Res> {
  factory _$$SubjectEntityImplCopyWith(
          _$SubjectEntityImpl value, $Res Function(_$SubjectEntityImpl) then) =
      __$$SubjectEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? lecturer,
      int? semester,
      List<String>? classes});
}

/// @nodoc
class __$$SubjectEntityImplCopyWithImpl<$Res>
    extends _$SubjectEntityCopyWithImpl<$Res, _$SubjectEntityImpl>
    implements _$$SubjectEntityImplCopyWith<$Res> {
  __$$SubjectEntityImplCopyWithImpl(
      _$SubjectEntityImpl _value, $Res Function(_$SubjectEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubjectEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? lecturer = freezed,
    Object? semester = freezed,
    Object? classes = freezed,
  }) {
    return _then(_$SubjectEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      lecturer: freezed == lecturer
          ? _value.lecturer
          : lecturer // ignore: cast_nullable_to_non_nullable
              as String?,
      semester: freezed == semester
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as int?,
      classes: freezed == classes
          ? _value._classes
          : classes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubjectEntityImpl implements _SubjectEntity {
  const _$SubjectEntityImpl(
      {this.id,
      this.name,
      this.lecturer,
      this.semester,
      final List<String>? classes})
      : _classes = classes;

  factory _$SubjectEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubjectEntityImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? lecturer;
  @override
  final int? semester;
  final List<String>? _classes;
  @override
  List<String>? get classes {
    final value = _classes;
    if (value == null) return null;
    if (_classes is EqualUnmodifiableListView) return _classes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SubjectEntity(id: $id, name: $name, lecturer: $lecturer, semester: $semester, classes: $classes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubjectEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lecturer, lecturer) ||
                other.lecturer == lecturer) &&
            (identical(other.semester, semester) ||
                other.semester == semester) &&
            const DeepCollectionEquality().equals(other._classes, _classes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, lecturer, semester,
      const DeepCollectionEquality().hash(_classes));

  /// Create a copy of SubjectEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubjectEntityImplCopyWith<_$SubjectEntityImpl> get copyWith =>
      __$$SubjectEntityImplCopyWithImpl<_$SubjectEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubjectEntityImplToJson(
      this,
    );
  }
}

abstract class _SubjectEntity implements SubjectEntity {
  const factory _SubjectEntity(
      {final String? id,
      final String? name,
      final String? lecturer,
      final int? semester,
      final List<String>? classes}) = _$SubjectEntityImpl;

  factory _SubjectEntity.fromJson(Map<String, dynamic> json) =
      _$SubjectEntityImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get lecturer;
  @override
  int? get semester;
  @override
  List<String>? get classes;

  /// Create a copy of SubjectEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubjectEntityImplCopyWith<_$SubjectEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
