// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'class_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClassEntity _$ClassEntityFromJson(Map<String, dynamic> json) {
  return _ClassEntity.fromJson(json);
}

/// @nodoc
mixin _$ClassEntity {
  String? get subject_name => throw _privateConstructorUsedError;
  String? get subject_class => throw _privateConstructorUsedError;
  String? get day => throw _privateConstructorUsedError;
  String? get lecturer => throw _privateConstructorUsedError;
  String? get session_time => throw _privateConstructorUsedError;

  /// Serializes this ClassEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClassEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClassEntityCopyWith<ClassEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassEntityCopyWith<$Res> {
  factory $ClassEntityCopyWith(
          ClassEntity value, $Res Function(ClassEntity) then) =
      _$ClassEntityCopyWithImpl<$Res, ClassEntity>;
  @useResult
  $Res call(
      {String? subject_name,
      String? subject_class,
      String? day,
      String? lecturer,
      String? session_time});
}

/// @nodoc
class _$ClassEntityCopyWithImpl<$Res, $Val extends ClassEntity>
    implements $ClassEntityCopyWith<$Res> {
  _$ClassEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClassEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subject_name = freezed,
    Object? subject_class = freezed,
    Object? day = freezed,
    Object? lecturer = freezed,
    Object? session_time = freezed,
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
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      lecturer: freezed == lecturer
          ? _value.lecturer
          : lecturer // ignore: cast_nullable_to_non_nullable
              as String?,
      session_time: freezed == session_time
          ? _value.session_time
          : session_time // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClassEntityImplCopyWith<$Res>
    implements $ClassEntityCopyWith<$Res> {
  factory _$$ClassEntityImplCopyWith(
          _$ClassEntityImpl value, $Res Function(_$ClassEntityImpl) then) =
      __$$ClassEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? subject_name,
      String? subject_class,
      String? day,
      String? lecturer,
      String? session_time});
}

/// @nodoc
class __$$ClassEntityImplCopyWithImpl<$Res>
    extends _$ClassEntityCopyWithImpl<$Res, _$ClassEntityImpl>
    implements _$$ClassEntityImplCopyWith<$Res> {
  __$$ClassEntityImplCopyWithImpl(
      _$ClassEntityImpl _value, $Res Function(_$ClassEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClassEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subject_name = freezed,
    Object? subject_class = freezed,
    Object? day = freezed,
    Object? lecturer = freezed,
    Object? session_time = freezed,
  }) {
    return _then(_$ClassEntityImpl(
      subject_name: freezed == subject_name
          ? _value.subject_name
          : subject_name // ignore: cast_nullable_to_non_nullable
              as String?,
      subject_class: freezed == subject_class
          ? _value.subject_class
          : subject_class // ignore: cast_nullable_to_non_nullable
              as String?,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      lecturer: freezed == lecturer
          ? _value.lecturer
          : lecturer // ignore: cast_nullable_to_non_nullable
              as String?,
      session_time: freezed == session_time
          ? _value.session_time
          : session_time // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClassEntityImpl implements _ClassEntity {
  const _$ClassEntityImpl(
      {this.subject_name,
      this.subject_class,
      this.day,
      this.lecturer,
      this.session_time});

  factory _$ClassEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClassEntityImplFromJson(json);

  @override
  final String? subject_name;
  @override
  final String? subject_class;
  @override
  final String? day;
  @override
  final String? lecturer;
  @override
  final String? session_time;

  @override
  String toString() {
    return 'ClassEntity(subject_name: $subject_name, subject_class: $subject_class, day: $day, lecturer: $lecturer, session_time: $session_time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassEntityImpl &&
            (identical(other.subject_name, subject_name) ||
                other.subject_name == subject_name) &&
            (identical(other.subject_class, subject_class) ||
                other.subject_class == subject_class) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.lecturer, lecturer) ||
                other.lecturer == lecturer) &&
            (identical(other.session_time, session_time) ||
                other.session_time == session_time));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, subject_name, subject_class, day, lecturer, session_time);

  /// Create a copy of ClassEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassEntityImplCopyWith<_$ClassEntityImpl> get copyWith =>
      __$$ClassEntityImplCopyWithImpl<_$ClassEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassEntityImplToJson(
      this,
    );
  }
}

abstract class _ClassEntity implements ClassEntity {
  const factory _ClassEntity(
      {final String? subject_name,
      final String? subject_class,
      final String? day,
      final String? lecturer,
      final String? session_time}) = _$ClassEntityImpl;

  factory _ClassEntity.fromJson(Map<String, dynamic> json) =
      _$ClassEntityImpl.fromJson;

  @override
  String? get subject_name;
  @override
  String? get subject_class;
  @override
  String? get day;
  @override
  String? get lecturer;
  @override
  String? get session_time;

  /// Create a copy of ClassEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClassEntityImplCopyWith<_$ClassEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
