// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'classes_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClassesResponseEntity _$ClassesResponseEntityFromJson(
    Map<String, dynamic> json) {
  return _ClassesResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$ClassesResponseEntity {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<ClassEntity>? get data => throw _privateConstructorUsedError;

  /// Serializes this ClassesResponseEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClassesResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClassesResponseEntityCopyWith<ClassesResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassesResponseEntityCopyWith<$Res> {
  factory $ClassesResponseEntityCopyWith(ClassesResponseEntity value,
          $Res Function(ClassesResponseEntity) then) =
      _$ClassesResponseEntityCopyWithImpl<$Res, ClassesResponseEntity>;
  @useResult
  $Res call({int? status, String? message, List<ClassEntity>? data});
}

/// @nodoc
class _$ClassesResponseEntityCopyWithImpl<$Res,
        $Val extends ClassesResponseEntity>
    implements $ClassesResponseEntityCopyWith<$Res> {
  _$ClassesResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClassesResponseEntity
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
              as List<ClassEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClassesResponseEntityImplCopyWith<$Res>
    implements $ClassesResponseEntityCopyWith<$Res> {
  factory _$$ClassesResponseEntityImplCopyWith(
          _$ClassesResponseEntityImpl value,
          $Res Function(_$ClassesResponseEntityImpl) then) =
      __$$ClassesResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, List<ClassEntity>? data});
}

/// @nodoc
class __$$ClassesResponseEntityImplCopyWithImpl<$Res>
    extends _$ClassesResponseEntityCopyWithImpl<$Res,
        _$ClassesResponseEntityImpl>
    implements _$$ClassesResponseEntityImplCopyWith<$Res> {
  __$$ClassesResponseEntityImplCopyWithImpl(_$ClassesResponseEntityImpl _value,
      $Res Function(_$ClassesResponseEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClassesResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ClassesResponseEntityImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ClassEntity>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClassesResponseEntityImpl implements _ClassesResponseEntity {
  const _$ClassesResponseEntityImpl(
      {this.status, this.message, final List<ClassEntity>? data})
      : _data = data;

  factory _$ClassesResponseEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClassesResponseEntityImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  final List<ClassEntity>? _data;
  @override
  List<ClassEntity>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ClassesResponseEntity(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassesResponseEntityImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, message, const DeepCollectionEquality().hash(_data));

  /// Create a copy of ClassesResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassesResponseEntityImplCopyWith<_$ClassesResponseEntityImpl>
      get copyWith => __$$ClassesResponseEntityImplCopyWithImpl<
          _$ClassesResponseEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassesResponseEntityImplToJson(
      this,
    );
  }
}

abstract class _ClassesResponseEntity implements ClassesResponseEntity {
  const factory _ClassesResponseEntity(
      {final int? status,
      final String? message,
      final List<ClassEntity>? data}) = _$ClassesResponseEntityImpl;

  factory _ClassesResponseEntity.fromJson(Map<String, dynamic> json) =
      _$ClassesResponseEntityImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  List<ClassEntity>? get data;

  /// Create a copy of ClassesResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClassesResponseEntityImplCopyWith<_$ClassesResponseEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
