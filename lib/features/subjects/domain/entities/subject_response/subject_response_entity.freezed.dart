// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subject_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubjectResponseEntity _$SubjectResponseEntityFromJson(
    Map<String, dynamic> json) {
  return _SubjectResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$SubjectResponseEntity {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  SubjectEntity? get data => throw _privateConstructorUsedError;

  /// Serializes this SubjectResponseEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubjectResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubjectResponseEntityCopyWith<SubjectResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubjectResponseEntityCopyWith<$Res> {
  factory $SubjectResponseEntityCopyWith(SubjectResponseEntity value,
          $Res Function(SubjectResponseEntity) then) =
      _$SubjectResponseEntityCopyWithImpl<$Res, SubjectResponseEntity>;
  @useResult
  $Res call({int? status, String? message, SubjectEntity? data});

  $SubjectEntityCopyWith<$Res>? get data;
}

/// @nodoc
class _$SubjectResponseEntityCopyWithImpl<$Res,
        $Val extends SubjectResponseEntity>
    implements $SubjectResponseEntityCopyWith<$Res> {
  _$SubjectResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubjectResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SubjectEntity?,
    ) as $Val);
  }

  /// Create a copy of SubjectResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubjectEntityCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $SubjectEntityCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubjectResponseEntityImplCopyWith<$Res>
    implements $SubjectResponseEntityCopyWith<$Res> {
  factory _$$SubjectResponseEntityImplCopyWith(
          _$SubjectResponseEntityImpl value,
          $Res Function(_$SubjectResponseEntityImpl) then) =
      __$$SubjectResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, SubjectEntity? data});

  @override
  $SubjectEntityCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SubjectResponseEntityImplCopyWithImpl<$Res>
    extends _$SubjectResponseEntityCopyWithImpl<$Res,
        _$SubjectResponseEntityImpl>
    implements _$$SubjectResponseEntityImplCopyWith<$Res> {
  __$$SubjectResponseEntityImplCopyWithImpl(_$SubjectResponseEntityImpl _value,
      $Res Function(_$SubjectResponseEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubjectResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$SubjectResponseEntityImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SubjectEntity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubjectResponseEntityImpl implements _SubjectResponseEntity {
  const _$SubjectResponseEntityImpl({this.status, this.message, this.data});

  factory _$SubjectResponseEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubjectResponseEntityImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final SubjectEntity? data;

  @override
  String toString() {
    return 'SubjectResponseEntity(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubjectResponseEntityImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  /// Create a copy of SubjectResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubjectResponseEntityImplCopyWith<_$SubjectResponseEntityImpl>
      get copyWith => __$$SubjectResponseEntityImplCopyWithImpl<
          _$SubjectResponseEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubjectResponseEntityImplToJson(
      this,
    );
  }
}

abstract class _SubjectResponseEntity implements SubjectResponseEntity {
  const factory _SubjectResponseEntity(
      {final int? status,
      final String? message,
      final SubjectEntity? data}) = _$SubjectResponseEntityImpl;

  factory _SubjectResponseEntity.fromJson(Map<String, dynamic> json) =
      _$SubjectResponseEntityImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  SubjectEntity? get data;

  /// Create a copy of SubjectResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubjectResponseEntityImplCopyWith<_$SubjectResponseEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
