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
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get lecturer => throw _privateConstructorUsedError;
  List<String>? get classes => throw _privateConstructorUsedError;
  int? get semester => throw _privateConstructorUsedError;
  ClassEntity? get registeredClass => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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
  $Res call(
      {String? id,
      String? name,
      String? lecturer,
      List<String>? classes,
      int? semester,
      ClassEntity? registeredClass});

  $ClassEntityCopyWith<$Res>? get registeredClass;
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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? lecturer = freezed,
    Object? classes = freezed,
    Object? semester = freezed,
    Object? registeredClass = freezed,
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
      semester: freezed == semester
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as int?,
      registeredClass: freezed == registeredClass
          ? _value.registeredClass
          : registeredClass // ignore: cast_nullable_to_non_nullable
              as ClassEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ClassEntityCopyWith<$Res>? get registeredClass {
    if (_value.registeredClass == null) {
      return null;
    }

    return $ClassEntityCopyWith<$Res>(_value.registeredClass!, (value) {
      return _then(_value.copyWith(registeredClass: value) as $Val);
    });
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
  $Res call(
      {String? id,
      String? name,
      String? lecturer,
      List<String>? classes,
      int? semester,
      ClassEntity? registeredClass});

  @override
  $ClassEntityCopyWith<$Res>? get registeredClass;
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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? lecturer = freezed,
    Object? classes = freezed,
    Object? semester = freezed,
    Object? registeredClass = freezed,
  }) {
    return _then(_$SelectedSubjectSubjectsEntityImpl(
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
      semester: freezed == semester
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as int?,
      registeredClass: freezed == registeredClass
          ? _value.registeredClass
          : registeredClass // ignore: cast_nullable_to_non_nullable
              as ClassEntity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SelectedSubjectSubjectsEntityImpl
    implements _SelectedSubjectSubjectsEntity {
  const _$SelectedSubjectSubjectsEntityImpl(
      {this.id,
      this.name,
      this.lecturer,
      final List<String>? classes,
      this.semester,
      required this.registeredClass})
      : _classes = classes;

  factory _$SelectedSubjectSubjectsEntityImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SelectedSubjectSubjectsEntityImplFromJson(json);

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
  final int? semester;
  @override
  final ClassEntity? registeredClass;

  @override
  String toString() {
    return 'SelectedSubjectSubjectsEntity(id: $id, name: $name, lecturer: $lecturer, classes: $classes, semester: $semester, registeredClass: $registeredClass)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedSubjectSubjectsEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lecturer, lecturer) ||
                other.lecturer == lecturer) &&
            const DeepCollectionEquality().equals(other._classes, _classes) &&
            (identical(other.semester, semester) ||
                other.semester == semester) &&
            (identical(other.registeredClass, registeredClass) ||
                other.registeredClass == registeredClass));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, lecturer,
      const DeepCollectionEquality().hash(_classes), semester, registeredClass);

  @JsonKey(ignore: true)
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
          {final String? id,
          final String? name,
          final String? lecturer,
          final List<String>? classes,
          final int? semester,
          required final ClassEntity? registeredClass}) =
      _$SelectedSubjectSubjectsEntityImpl;

  factory _SelectedSubjectSubjectsEntity.fromJson(Map<String, dynamic> json) =
      _$SelectedSubjectSubjectsEntityImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get lecturer;
  @override
  List<String>? get classes;
  @override
  int? get semester;
  @override
  ClassEntity? get registeredClass;
  @override
  @JsonKey(ignore: true)
  _$$SelectedSubjectSubjectsEntityImplCopyWith<
          _$SelectedSubjectSubjectsEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
