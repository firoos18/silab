// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selected_class_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SelectedClassEntity _$SelectedClassEntityFromJson(Map<String, dynamic> json) {
  return _SelectedClassEntity.fromJson(json);
}

/// @nodoc
mixin _$SelectedClassEntity {
  String? get subjectName => throw _privateConstructorUsedError;
  String? get className => throw _privateConstructorUsedError;

  /// Serializes this SelectedClassEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SelectedClassEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SelectedClassEntityCopyWith<SelectedClassEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedClassEntityCopyWith<$Res> {
  factory $SelectedClassEntityCopyWith(
          SelectedClassEntity value, $Res Function(SelectedClassEntity) then) =
      _$SelectedClassEntityCopyWithImpl<$Res, SelectedClassEntity>;
  @useResult
  $Res call({String? subjectName, String? className});
}

/// @nodoc
class _$SelectedClassEntityCopyWithImpl<$Res, $Val extends SelectedClassEntity>
    implements $SelectedClassEntityCopyWith<$Res> {
  _$SelectedClassEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SelectedClassEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subjectName = freezed,
    Object? className = freezed,
  }) {
    return _then(_value.copyWith(
      subjectName: freezed == subjectName
          ? _value.subjectName
          : subjectName // ignore: cast_nullable_to_non_nullable
              as String?,
      className: freezed == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SelectedClassEntityImplCopyWith<$Res>
    implements $SelectedClassEntityCopyWith<$Res> {
  factory _$$SelectedClassEntityImplCopyWith(_$SelectedClassEntityImpl value,
          $Res Function(_$SelectedClassEntityImpl) then) =
      __$$SelectedClassEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? subjectName, String? className});
}

/// @nodoc
class __$$SelectedClassEntityImplCopyWithImpl<$Res>
    extends _$SelectedClassEntityCopyWithImpl<$Res, _$SelectedClassEntityImpl>
    implements _$$SelectedClassEntityImplCopyWith<$Res> {
  __$$SelectedClassEntityImplCopyWithImpl(_$SelectedClassEntityImpl _value,
      $Res Function(_$SelectedClassEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of SelectedClassEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subjectName = freezed,
    Object? className = freezed,
  }) {
    return _then(_$SelectedClassEntityImpl(
      subjectName: freezed == subjectName
          ? _value.subjectName
          : subjectName // ignore: cast_nullable_to_non_nullable
              as String?,
      className: freezed == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SelectedClassEntityImpl implements _SelectedClassEntity {
  const _$SelectedClassEntityImpl({this.subjectName, this.className});

  factory _$SelectedClassEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SelectedClassEntityImplFromJson(json);

  @override
  final String? subjectName;
  @override
  final String? className;

  @override
  String toString() {
    return 'SelectedClassEntity(subjectName: $subjectName, className: $className)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedClassEntityImpl &&
            (identical(other.subjectName, subjectName) ||
                other.subjectName == subjectName) &&
            (identical(other.className, className) ||
                other.className == className));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, subjectName, className);

  /// Create a copy of SelectedClassEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedClassEntityImplCopyWith<_$SelectedClassEntityImpl> get copyWith =>
      __$$SelectedClassEntityImplCopyWithImpl<_$SelectedClassEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SelectedClassEntityImplToJson(
      this,
    );
  }
}

abstract class _SelectedClassEntity implements SelectedClassEntity {
  const factory _SelectedClassEntity(
      {final String? subjectName,
      final String? className}) = _$SelectedClassEntityImpl;

  factory _SelectedClassEntity.fromJson(Map<String, dynamic> json) =
      _$SelectedClassEntityImpl.fromJson;

  @override
  String? get subjectName;
  @override
  String? get className;

  /// Create a copy of SelectedClassEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectedClassEntityImplCopyWith<_$SelectedClassEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
