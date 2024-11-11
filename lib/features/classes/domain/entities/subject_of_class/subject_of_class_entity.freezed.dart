// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subject_of_class_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubjectOfClassEntity _$SubjectOfClassEntityFromJson(Map<String, dynamic> json) {
  return _SubjectOfClassEntity.fromJson(json);
}

/// @nodoc
mixin _$SubjectOfClassEntity {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get lecturer => throw _privateConstructorUsedError;
  List<String>? get classes => throw _privateConstructorUsedError;

  /// Serializes this SubjectOfClassEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubjectOfClassEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubjectOfClassEntityCopyWith<SubjectOfClassEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubjectOfClassEntityCopyWith<$Res> {
  factory $SubjectOfClassEntityCopyWith(SubjectOfClassEntity value,
          $Res Function(SubjectOfClassEntity) then) =
      _$SubjectOfClassEntityCopyWithImpl<$Res, SubjectOfClassEntity>;
  @useResult
  $Res call(
      {String? id, String? name, String? lecturer, List<String>? classes});
}

/// @nodoc
class _$SubjectOfClassEntityCopyWithImpl<$Res,
        $Val extends SubjectOfClassEntity>
    implements $SubjectOfClassEntityCopyWith<$Res> {
  _$SubjectOfClassEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubjectOfClassEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? lecturer = freezed,
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
      classes: freezed == classes
          ? _value.classes
          : classes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubjectOfClassEntityImplCopyWith<$Res>
    implements $SubjectOfClassEntityCopyWith<$Res> {
  factory _$$SubjectOfClassEntityImplCopyWith(_$SubjectOfClassEntityImpl value,
          $Res Function(_$SubjectOfClassEntityImpl) then) =
      __$$SubjectOfClassEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id, String? name, String? lecturer, List<String>? classes});
}

/// @nodoc
class __$$SubjectOfClassEntityImplCopyWithImpl<$Res>
    extends _$SubjectOfClassEntityCopyWithImpl<$Res, _$SubjectOfClassEntityImpl>
    implements _$$SubjectOfClassEntityImplCopyWith<$Res> {
  __$$SubjectOfClassEntityImplCopyWithImpl(_$SubjectOfClassEntityImpl _value,
      $Res Function(_$SubjectOfClassEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubjectOfClassEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? lecturer = freezed,
    Object? classes = freezed,
  }) {
    return _then(_$SubjectOfClassEntityImpl(
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
      classes: freezed == classes
          ? _value._classes
          : classes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubjectOfClassEntityImpl implements _SubjectOfClassEntity {
  const _$SubjectOfClassEntityImpl(
      {this.id, this.name, this.lecturer, final List<String>? classes})
      : _classes = classes;

  factory _$SubjectOfClassEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubjectOfClassEntityImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? lecturer;
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
    return 'SubjectOfClassEntity(id: $id, name: $name, lecturer: $lecturer, classes: $classes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubjectOfClassEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lecturer, lecturer) ||
                other.lecturer == lecturer) &&
            const DeepCollectionEquality().equals(other._classes, _classes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, lecturer,
      const DeepCollectionEquality().hash(_classes));

  /// Create a copy of SubjectOfClassEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubjectOfClassEntityImplCopyWith<_$SubjectOfClassEntityImpl>
      get copyWith =>
          __$$SubjectOfClassEntityImplCopyWithImpl<_$SubjectOfClassEntityImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubjectOfClassEntityImplToJson(
      this,
    );
  }
}

abstract class _SubjectOfClassEntity implements SubjectOfClassEntity {
  const factory _SubjectOfClassEntity(
      {final String? id,
      final String? name,
      final String? lecturer,
      final List<String>? classes}) = _$SubjectOfClassEntityImpl;

  factory _SubjectOfClassEntity.fromJson(Map<String, dynamic> json) =
      _$SubjectOfClassEntityImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get lecturer;
  @override
  List<String>? get classes;

  /// Create a copy of SubjectOfClassEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubjectOfClassEntityImplCopyWith<_$SubjectOfClassEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
