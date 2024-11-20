// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subject_list_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubjectListResponseEntity _$SubjectListResponseEntityFromJson(
    Map<String, dynamic> json) {
  return _SubjectListResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$SubjectListResponseEntity {
  String? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<SubjectEntity>? get data => throw _privateConstructorUsedError;

  /// Serializes this SubjectListResponseEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubjectListResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubjectListResponseEntityCopyWith<SubjectListResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubjectListResponseEntityCopyWith<$Res> {
  factory $SubjectListResponseEntityCopyWith(SubjectListResponseEntity value,
          $Res Function(SubjectListResponseEntity) then) =
      _$SubjectListResponseEntityCopyWithImpl<$Res, SubjectListResponseEntity>;
  @useResult
  $Res call({String? status, String? message, List<SubjectEntity>? data});
}

/// @nodoc
class _$SubjectListResponseEntityCopyWithImpl<$Res,
        $Val extends SubjectListResponseEntity>
    implements $SubjectListResponseEntityCopyWith<$Res> {
  _$SubjectListResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubjectListResponseEntity
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
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SubjectEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubjectListResponseEntityImplCopyWith<$Res>
    implements $SubjectListResponseEntityCopyWith<$Res> {
  factory _$$SubjectListResponseEntityImplCopyWith(
          _$SubjectListResponseEntityImpl value,
          $Res Function(_$SubjectListResponseEntityImpl) then) =
      __$$SubjectListResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status, String? message, List<SubjectEntity>? data});
}

/// @nodoc
class __$$SubjectListResponseEntityImplCopyWithImpl<$Res>
    extends _$SubjectListResponseEntityCopyWithImpl<$Res,
        _$SubjectListResponseEntityImpl>
    implements _$$SubjectListResponseEntityImplCopyWith<$Res> {
  __$$SubjectListResponseEntityImplCopyWithImpl(
      _$SubjectListResponseEntityImpl _value,
      $Res Function(_$SubjectListResponseEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubjectListResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$SubjectListResponseEntityImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SubjectEntity>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubjectListResponseEntityImpl implements _SubjectListResponseEntity {
  const _$SubjectListResponseEntityImpl(
      {this.status, this.message, final List<SubjectEntity>? data})
      : _data = data;

  factory _$SubjectListResponseEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubjectListResponseEntityImplFromJson(json);

  @override
  final String? status;
  @override
  final String? message;
  final List<SubjectEntity>? _data;
  @override
  List<SubjectEntity>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SubjectListResponseEntity(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubjectListResponseEntityImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, message, const DeepCollectionEquality().hash(_data));

  /// Create a copy of SubjectListResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubjectListResponseEntityImplCopyWith<_$SubjectListResponseEntityImpl>
      get copyWith => __$$SubjectListResponseEntityImplCopyWithImpl<
          _$SubjectListResponseEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubjectListResponseEntityImplToJson(
      this,
    );
  }
}

abstract class _SubjectListResponseEntity implements SubjectListResponseEntity {
  const factory _SubjectListResponseEntity(
      {final String? status,
      final String? message,
      final List<SubjectEntity>? data}) = _$SubjectListResponseEntityImpl;

  factory _SubjectListResponseEntity.fromJson(Map<String, dynamic> json) =
      _$SubjectListResponseEntityImpl.fromJson;

  @override
  String? get status;
  @override
  String? get message;
  @override
  List<SubjectEntity>? get data;

  /// Create a copy of SubjectListResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubjectListResponseEntityImplCopyWith<_$SubjectListResponseEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
