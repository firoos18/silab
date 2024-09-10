// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_selected_subject_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddSelectedSubjectResponseEntity _$AddSelectedSubjectResponseEntityFromJson(
    Map<String, dynamic> json) {
  return _AddSelectedSubjectResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$AddSelectedSubjectResponseEntity {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  AddSubjectSubjectsEntity? get data => throw _privateConstructorUsedError;

  /// Serializes this AddSelectedSubjectResponseEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddSelectedSubjectResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddSelectedSubjectResponseEntityCopyWith<AddSelectedSubjectResponseEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddSelectedSubjectResponseEntityCopyWith<$Res> {
  factory $AddSelectedSubjectResponseEntityCopyWith(
          AddSelectedSubjectResponseEntity value,
          $Res Function(AddSelectedSubjectResponseEntity) then) =
      _$AddSelectedSubjectResponseEntityCopyWithImpl<$Res,
          AddSelectedSubjectResponseEntity>;
  @useResult
  $Res call({int? status, String? message, AddSubjectSubjectsEntity? data});

  $AddSubjectSubjectsEntityCopyWith<$Res>? get data;
}

/// @nodoc
class _$AddSelectedSubjectResponseEntityCopyWithImpl<$Res,
        $Val extends AddSelectedSubjectResponseEntity>
    implements $AddSelectedSubjectResponseEntityCopyWith<$Res> {
  _$AddSelectedSubjectResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddSelectedSubjectResponseEntity
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
              as AddSubjectSubjectsEntity?,
    ) as $Val);
  }

  /// Create a copy of AddSelectedSubjectResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddSubjectSubjectsEntityCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $AddSubjectSubjectsEntityCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddSelectedSubjectResponseEntityImplCopyWith<$Res>
    implements $AddSelectedSubjectResponseEntityCopyWith<$Res> {
  factory _$$AddSelectedSubjectResponseEntityImplCopyWith(
          _$AddSelectedSubjectResponseEntityImpl value,
          $Res Function(_$AddSelectedSubjectResponseEntityImpl) then) =
      __$$AddSelectedSubjectResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, AddSubjectSubjectsEntity? data});

  @override
  $AddSubjectSubjectsEntityCopyWith<$Res>? get data;
}

/// @nodoc
class __$$AddSelectedSubjectResponseEntityImplCopyWithImpl<$Res>
    extends _$AddSelectedSubjectResponseEntityCopyWithImpl<$Res,
        _$AddSelectedSubjectResponseEntityImpl>
    implements _$$AddSelectedSubjectResponseEntityImplCopyWith<$Res> {
  __$$AddSelectedSubjectResponseEntityImplCopyWithImpl(
      _$AddSelectedSubjectResponseEntityImpl _value,
      $Res Function(_$AddSelectedSubjectResponseEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddSelectedSubjectResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$AddSelectedSubjectResponseEntityImpl(
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
              as AddSubjectSubjectsEntity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddSelectedSubjectResponseEntityImpl
    implements _AddSelectedSubjectResponseEntity {
  const _$AddSelectedSubjectResponseEntityImpl(
      {this.status, this.message, this.data});

  factory _$AddSelectedSubjectResponseEntityImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AddSelectedSubjectResponseEntityImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final AddSubjectSubjectsEntity? data;

  @override
  String toString() {
    return 'AddSelectedSubjectResponseEntity(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddSelectedSubjectResponseEntityImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  /// Create a copy of AddSelectedSubjectResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddSelectedSubjectResponseEntityImplCopyWith<
          _$AddSelectedSubjectResponseEntityImpl>
      get copyWith => __$$AddSelectedSubjectResponseEntityImplCopyWithImpl<
          _$AddSelectedSubjectResponseEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddSelectedSubjectResponseEntityImplToJson(
      this,
    );
  }
}

abstract class _AddSelectedSubjectResponseEntity
    implements AddSelectedSubjectResponseEntity {
  const factory _AddSelectedSubjectResponseEntity(
          {final int? status,
          final String? message,
          final AddSubjectSubjectsEntity? data}) =
      _$AddSelectedSubjectResponseEntityImpl;

  factory _AddSelectedSubjectResponseEntity.fromJson(
          Map<String, dynamic> json) =
      _$AddSelectedSubjectResponseEntityImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  AddSubjectSubjectsEntity? get data;

  /// Create a copy of AddSelectedSubjectResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddSelectedSubjectResponseEntityImplCopyWith<
          _$AddSelectedSubjectResponseEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
