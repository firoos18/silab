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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubjectEntityCopyWith<SubjectEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubjectEntityCopyWith<$Res> {
  factory $SubjectEntityCopyWith(
          SubjectEntity value, $Res Function(SubjectEntity) then) =
      _$SubjectEntityCopyWithImpl<$Res, SubjectEntity>;
  @useResult
  $Res call({String? id, String? name, String? lecturer});
}

/// @nodoc
class _$SubjectEntityCopyWithImpl<$Res, $Val extends SubjectEntity>
    implements $SubjectEntityCopyWith<$Res> {
  _$SubjectEntityCopyWithImpl(this._value, this._then);

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
  $Res call({String? id, String? name, String? lecturer});
}

/// @nodoc
class __$$SubjectEntityImplCopyWithImpl<$Res>
    extends _$SubjectEntityCopyWithImpl<$Res, _$SubjectEntityImpl>
    implements _$$SubjectEntityImplCopyWith<$Res> {
  __$$SubjectEntityImplCopyWithImpl(
      _$SubjectEntityImpl _value, $Res Function(_$SubjectEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? lecturer = freezed,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubjectEntityImpl implements _SubjectEntity {
  const _$SubjectEntityImpl({this.id, this.name, this.lecturer});

  factory _$SubjectEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubjectEntityImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? lecturer;

  @override
  String toString() {
    return 'SubjectEntity(id: $id, name: $name, lecturer: $lecturer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubjectEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lecturer, lecturer) ||
                other.lecturer == lecturer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, lecturer);

  @JsonKey(ignore: true)
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
      final String? lecturer}) = _$SubjectEntityImpl;

  factory _SubjectEntity.fromJson(Map<String, dynamic> json) =
      _$SubjectEntityImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get lecturer;
  @override
  @JsonKey(ignore: true)
  _$$SubjectEntityImplCopyWith<_$SubjectEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
