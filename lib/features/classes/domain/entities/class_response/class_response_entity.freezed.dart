// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'class_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClassResponseEntity _$ClassResponseEntityFromJson(Map<String, dynamic> json) {
  return _ClassResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$ClassResponseEntity {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  ClassEntity? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClassResponseEntityCopyWith<ClassResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassResponseEntityCopyWith<$Res> {
  factory $ClassResponseEntityCopyWith(
          ClassResponseEntity value, $Res Function(ClassResponseEntity) then) =
      _$ClassResponseEntityCopyWithImpl<$Res, ClassResponseEntity>;
  @useResult
  $Res call({int? status, String? message, ClassEntity? data});

  $ClassEntityCopyWith<$Res>? get data;
}

/// @nodoc
class _$ClassResponseEntityCopyWithImpl<$Res, $Val extends ClassResponseEntity>
    implements $ClassResponseEntityCopyWith<$Res> {
  _$ClassResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
              as ClassEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ClassEntityCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ClassEntityCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClassResponseEntityImplCopyWith<$Res>
    implements $ClassResponseEntityCopyWith<$Res> {
  factory _$$ClassResponseEntityImplCopyWith(_$ClassResponseEntityImpl value,
          $Res Function(_$ClassResponseEntityImpl) then) =
      __$$ClassResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, ClassEntity? data});

  @override
  $ClassEntityCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ClassResponseEntityImplCopyWithImpl<$Res>
    extends _$ClassResponseEntityCopyWithImpl<$Res, _$ClassResponseEntityImpl>
    implements _$$ClassResponseEntityImplCopyWith<$Res> {
  __$$ClassResponseEntityImplCopyWithImpl(_$ClassResponseEntityImpl _value,
      $Res Function(_$ClassResponseEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ClassResponseEntityImpl(
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
              as ClassEntity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClassResponseEntityImpl implements _ClassResponseEntity {
  const _$ClassResponseEntityImpl({this.status, this.message, this.data});

  factory _$ClassResponseEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClassResponseEntityImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final ClassEntity? data;

  @override
  String toString() {
    return 'ClassResponseEntity(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassResponseEntityImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassResponseEntityImplCopyWith<_$ClassResponseEntityImpl> get copyWith =>
      __$$ClassResponseEntityImplCopyWithImpl<_$ClassResponseEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassResponseEntityImplToJson(
      this,
    );
  }
}

abstract class _ClassResponseEntity implements ClassResponseEntity {
  const factory _ClassResponseEntity(
      {final int? status,
      final String? message,
      final ClassEntity? data}) = _$ClassResponseEntityImpl;

  factory _ClassResponseEntity.fromJson(Map<String, dynamic> json) =
      _$ClassResponseEntityImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  ClassEntity? get data;
  @override
  @JsonKey(ignore: true)
  _$$ClassResponseEntityImplCopyWith<_$ClassResponseEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
