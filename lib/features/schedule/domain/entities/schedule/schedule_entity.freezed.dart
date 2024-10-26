// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ScheduleEntity _$ScheduleEntityFromJson(Map<String, dynamic> json) {
  return _ScheduleEntity.fromJson(json);
}

/// @nodoc
mixin _$ScheduleEntity {
  String? get day => throw _privateConstructorUsedError;
  List<PracticumsEntity>? get practicums => throw _privateConstructorUsedError;

  /// Serializes this ScheduleEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScheduleEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScheduleEntityCopyWith<ScheduleEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleEntityCopyWith<$Res> {
  factory $ScheduleEntityCopyWith(
          ScheduleEntity value, $Res Function(ScheduleEntity) then) =
      _$ScheduleEntityCopyWithImpl<$Res, ScheduleEntity>;
  @useResult
  $Res call({String? day, List<PracticumsEntity>? practicums});
}

/// @nodoc
class _$ScheduleEntityCopyWithImpl<$Res, $Val extends ScheduleEntity>
    implements $ScheduleEntityCopyWith<$Res> {
  _$ScheduleEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScheduleEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = freezed,
    Object? practicums = freezed,
  }) {
    return _then(_value.copyWith(
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      practicums: freezed == practicums
          ? _value.practicums
          : practicums // ignore: cast_nullable_to_non_nullable
              as List<PracticumsEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScheduleEntityImplCopyWith<$Res>
    implements $ScheduleEntityCopyWith<$Res> {
  factory _$$ScheduleEntityImplCopyWith(_$ScheduleEntityImpl value,
          $Res Function(_$ScheduleEntityImpl) then) =
      __$$ScheduleEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? day, List<PracticumsEntity>? practicums});
}

/// @nodoc
class __$$ScheduleEntityImplCopyWithImpl<$Res>
    extends _$ScheduleEntityCopyWithImpl<$Res, _$ScheduleEntityImpl>
    implements _$$ScheduleEntityImplCopyWith<$Res> {
  __$$ScheduleEntityImplCopyWithImpl(
      _$ScheduleEntityImpl _value, $Res Function(_$ScheduleEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = freezed,
    Object? practicums = freezed,
  }) {
    return _then(_$ScheduleEntityImpl(
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      practicums: freezed == practicums
          ? _value._practicums
          : practicums // ignore: cast_nullable_to_non_nullable
              as List<PracticumsEntity>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScheduleEntityImpl implements _ScheduleEntity {
  const _$ScheduleEntityImpl(
      {this.day, final List<PracticumsEntity>? practicums})
      : _practicums = practicums;

  factory _$ScheduleEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScheduleEntityImplFromJson(json);

  @override
  final String? day;
  final List<PracticumsEntity>? _practicums;
  @override
  List<PracticumsEntity>? get practicums {
    final value = _practicums;
    if (value == null) return null;
    if (_practicums is EqualUnmodifiableListView) return _practicums;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ScheduleEntity(day: $day, practicums: $practicums)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleEntityImpl &&
            (identical(other.day, day) || other.day == day) &&
            const DeepCollectionEquality()
                .equals(other._practicums, _practicums));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, day, const DeepCollectionEquality().hash(_practicums));

  /// Create a copy of ScheduleEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleEntityImplCopyWith<_$ScheduleEntityImpl> get copyWith =>
      __$$ScheduleEntityImplCopyWithImpl<_$ScheduleEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScheduleEntityImplToJson(
      this,
    );
  }
}

abstract class _ScheduleEntity implements ScheduleEntity {
  const factory _ScheduleEntity(
      {final String? day,
      final List<PracticumsEntity>? practicums}) = _$ScheduleEntityImpl;

  factory _ScheduleEntity.fromJson(Map<String, dynamic> json) =
      _$ScheduleEntityImpl.fromJson;

  @override
  String? get day;
  @override
  List<PracticumsEntity>? get practicums;

  /// Create a copy of ScheduleEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleEntityImplCopyWith<_$ScheduleEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
