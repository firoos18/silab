// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_class_option_by_paid_subject_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserClassOptionByPaidSubjectResponseEntity
    _$UserClassOptionByPaidSubjectResponseEntityFromJson(
        Map<String, dynamic> json) {
  return _UserClassOptionByPaidSubjectResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$UserClassOptionByPaidSubjectResponseEntity {
  String? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<UserClassOptionByPaidSubjectEntity>? get data =>
      throw _privateConstructorUsedError;

  /// Serializes this UserClassOptionByPaidSubjectResponseEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserClassOptionByPaidSubjectResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserClassOptionByPaidSubjectResponseEntityCopyWith<
          UserClassOptionByPaidSubjectResponseEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserClassOptionByPaidSubjectResponseEntityCopyWith<$Res> {
  factory $UserClassOptionByPaidSubjectResponseEntityCopyWith(
          UserClassOptionByPaidSubjectResponseEntity value,
          $Res Function(UserClassOptionByPaidSubjectResponseEntity) then) =
      _$UserClassOptionByPaidSubjectResponseEntityCopyWithImpl<$Res,
          UserClassOptionByPaidSubjectResponseEntity>;
  @useResult
  $Res call(
      {String? status,
      String? message,
      List<UserClassOptionByPaidSubjectEntity>? data});
}

/// @nodoc
class _$UserClassOptionByPaidSubjectResponseEntityCopyWithImpl<$Res,
        $Val extends UserClassOptionByPaidSubjectResponseEntity>
    implements $UserClassOptionByPaidSubjectResponseEntityCopyWith<$Res> {
  _$UserClassOptionByPaidSubjectResponseEntityCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserClassOptionByPaidSubjectResponseEntity
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
              as List<UserClassOptionByPaidSubjectEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserClassOptionByPaidSubjectResponseEntityImplCopyWith<$Res>
    implements $UserClassOptionByPaidSubjectResponseEntityCopyWith<$Res> {
  factory _$$UserClassOptionByPaidSubjectResponseEntityImplCopyWith(
          _$UserClassOptionByPaidSubjectResponseEntityImpl value,
          $Res Function(_$UserClassOptionByPaidSubjectResponseEntityImpl)
              then) =
      __$$UserClassOptionByPaidSubjectResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? status,
      String? message,
      List<UserClassOptionByPaidSubjectEntity>? data});
}

/// @nodoc
class __$$UserClassOptionByPaidSubjectResponseEntityImplCopyWithImpl<$Res>
    extends _$UserClassOptionByPaidSubjectResponseEntityCopyWithImpl<$Res,
        _$UserClassOptionByPaidSubjectResponseEntityImpl>
    implements _$$UserClassOptionByPaidSubjectResponseEntityImplCopyWith<$Res> {
  __$$UserClassOptionByPaidSubjectResponseEntityImplCopyWithImpl(
      _$UserClassOptionByPaidSubjectResponseEntityImpl _value,
      $Res Function(_$UserClassOptionByPaidSubjectResponseEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserClassOptionByPaidSubjectResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$UserClassOptionByPaidSubjectResponseEntityImpl(
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
              as List<UserClassOptionByPaidSubjectEntity>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserClassOptionByPaidSubjectResponseEntityImpl
    implements _UserClassOptionByPaidSubjectResponseEntity {
  const _$UserClassOptionByPaidSubjectResponseEntityImpl(
      {this.status,
      this.message,
      final List<UserClassOptionByPaidSubjectEntity>? data})
      : _data = data;

  factory _$UserClassOptionByPaidSubjectResponseEntityImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UserClassOptionByPaidSubjectResponseEntityImplFromJson(json);

  @override
  final String? status;
  @override
  final String? message;
  final List<UserClassOptionByPaidSubjectEntity>? _data;
  @override
  List<UserClassOptionByPaidSubjectEntity>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UserClassOptionByPaidSubjectResponseEntity(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserClassOptionByPaidSubjectResponseEntityImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, message, const DeepCollectionEquality().hash(_data));

  /// Create a copy of UserClassOptionByPaidSubjectResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserClassOptionByPaidSubjectResponseEntityImplCopyWith<
          _$UserClassOptionByPaidSubjectResponseEntityImpl>
      get copyWith =>
          __$$UserClassOptionByPaidSubjectResponseEntityImplCopyWithImpl<
                  _$UserClassOptionByPaidSubjectResponseEntityImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserClassOptionByPaidSubjectResponseEntityImplToJson(
      this,
    );
  }
}

abstract class _UserClassOptionByPaidSubjectResponseEntity
    implements UserClassOptionByPaidSubjectResponseEntity {
  const factory _UserClassOptionByPaidSubjectResponseEntity(
          {final String? status,
          final String? message,
          final List<UserClassOptionByPaidSubjectEntity>? data}) =
      _$UserClassOptionByPaidSubjectResponseEntityImpl;

  factory _UserClassOptionByPaidSubjectResponseEntity.fromJson(
          Map<String, dynamic> json) =
      _$UserClassOptionByPaidSubjectResponseEntityImpl.fromJson;

  @override
  String? get status;
  @override
  String? get message;
  @override
  List<UserClassOptionByPaidSubjectEntity>? get data;

  /// Create a copy of UserClassOptionByPaidSubjectResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserClassOptionByPaidSubjectResponseEntityImplCopyWith<
          _$UserClassOptionByPaidSubjectResponseEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
