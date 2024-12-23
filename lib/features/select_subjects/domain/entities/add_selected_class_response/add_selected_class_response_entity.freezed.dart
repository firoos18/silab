// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_selected_class_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddSelectedClassResponseEntity _$AddSelectedClassResponseEntityFromJson(
    Map<String, dynamic> json) {
  return _AddSelectedClassResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$AddSelectedClassResponseEntity {
  String? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  /// Serializes this AddSelectedClassResponseEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddSelectedClassResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddSelectedClassResponseEntityCopyWith<AddSelectedClassResponseEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddSelectedClassResponseEntityCopyWith<$Res> {
  factory $AddSelectedClassResponseEntityCopyWith(
          AddSelectedClassResponseEntity value,
          $Res Function(AddSelectedClassResponseEntity) then) =
      _$AddSelectedClassResponseEntityCopyWithImpl<$Res,
          AddSelectedClassResponseEntity>;
  @useResult
  $Res call({String? status, String? message});
}

/// @nodoc
class _$AddSelectedClassResponseEntityCopyWithImpl<$Res,
        $Val extends AddSelectedClassResponseEntity>
    implements $AddSelectedClassResponseEntityCopyWith<$Res> {
  _$AddSelectedClassResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddSelectedClassResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddSelectedClassResponseEntityImplCopyWith<$Res>
    implements $AddSelectedClassResponseEntityCopyWith<$Res> {
  factory _$$AddSelectedClassResponseEntityImplCopyWith(
          _$AddSelectedClassResponseEntityImpl value,
          $Res Function(_$AddSelectedClassResponseEntityImpl) then) =
      __$$AddSelectedClassResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status, String? message});
}

/// @nodoc
class __$$AddSelectedClassResponseEntityImplCopyWithImpl<$Res>
    extends _$AddSelectedClassResponseEntityCopyWithImpl<$Res,
        _$AddSelectedClassResponseEntityImpl>
    implements _$$AddSelectedClassResponseEntityImplCopyWith<$Res> {
  __$$AddSelectedClassResponseEntityImplCopyWithImpl(
      _$AddSelectedClassResponseEntityImpl _value,
      $Res Function(_$AddSelectedClassResponseEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddSelectedClassResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_$AddSelectedClassResponseEntityImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddSelectedClassResponseEntityImpl
    implements _AddSelectedClassResponseEntity {
  const _$AddSelectedClassResponseEntityImpl({this.status, this.message});

  factory _$AddSelectedClassResponseEntityImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AddSelectedClassResponseEntityImplFromJson(json);

  @override
  final String? status;
  @override
  final String? message;

  @override
  String toString() {
    return 'AddSelectedClassResponseEntity(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddSelectedClassResponseEntityImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  /// Create a copy of AddSelectedClassResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddSelectedClassResponseEntityImplCopyWith<
          _$AddSelectedClassResponseEntityImpl>
      get copyWith => __$$AddSelectedClassResponseEntityImplCopyWithImpl<
          _$AddSelectedClassResponseEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddSelectedClassResponseEntityImplToJson(
      this,
    );
  }
}

abstract class _AddSelectedClassResponseEntity
    implements AddSelectedClassResponseEntity {
  const factory _AddSelectedClassResponseEntity(
      {final String? status,
      final String? message}) = _$AddSelectedClassResponseEntityImpl;

  factory _AddSelectedClassResponseEntity.fromJson(Map<String, dynamic> json) =
      _$AddSelectedClassResponseEntityImpl.fromJson;

  @override
  String? get status;
  @override
  String? get message;

  /// Create a copy of AddSelectedClassResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddSelectedClassResponseEntityImplCopyWith<
          _$AddSelectedClassResponseEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
