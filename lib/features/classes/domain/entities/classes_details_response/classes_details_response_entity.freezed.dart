// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'classes_details_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClassesDetailsResponseEntity _$ClassesDetailsResponseEntityFromJson(
    Map<String, dynamic> json) {
  return _ClassesDetailsResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$ClassesDetailsResponseEntity {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<ClassEntity>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClassesDetailsResponseEntityCopyWith<ClassesDetailsResponseEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassesDetailsResponseEntityCopyWith<$Res> {
  factory $ClassesDetailsResponseEntityCopyWith(
          ClassesDetailsResponseEntity value,
          $Res Function(ClassesDetailsResponseEntity) then) =
      _$ClassesDetailsResponseEntityCopyWithImpl<$Res,
          ClassesDetailsResponseEntity>;
  @useResult
  $Res call({int? status, String? message, List<ClassEntity>? data});
}

/// @nodoc
class _$ClassesDetailsResponseEntityCopyWithImpl<$Res,
        $Val extends ClassesDetailsResponseEntity>
    implements $ClassesDetailsResponseEntityCopyWith<$Res> {
  _$ClassesDetailsResponseEntityCopyWithImpl(this._value, this._then);

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
              as List<ClassEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClassesDetailsResponseEntityImplCopyWith<$Res>
    implements $ClassesDetailsResponseEntityCopyWith<$Res> {
  factory _$$ClassesDetailsResponseEntityImplCopyWith(
          _$ClassesDetailsResponseEntityImpl value,
          $Res Function(_$ClassesDetailsResponseEntityImpl) then) =
      __$$ClassesDetailsResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, List<ClassEntity>? data});
}

/// @nodoc
class __$$ClassesDetailsResponseEntityImplCopyWithImpl<$Res>
    extends _$ClassesDetailsResponseEntityCopyWithImpl<$Res,
        _$ClassesDetailsResponseEntityImpl>
    implements _$$ClassesDetailsResponseEntityImplCopyWith<$Res> {
  __$$ClassesDetailsResponseEntityImplCopyWithImpl(
      _$ClassesDetailsResponseEntityImpl _value,
      $Res Function(_$ClassesDetailsResponseEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ClassesDetailsResponseEntityImpl(
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
class _$ClassesDetailsResponseEntityImpl
    implements _ClassesDetailsResponseEntity {
  const _$ClassesDetailsResponseEntityImpl(
      {this.status, this.message, final List<ClassEntity>? data})
      : _data = data;

  factory _$ClassesDetailsResponseEntityImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ClassesDetailsResponseEntityImplFromJson(json);

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
    return 'ClassesDetailsResponseEntity(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassesDetailsResponseEntityImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, message, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassesDetailsResponseEntityImplCopyWith<
          _$ClassesDetailsResponseEntityImpl>
      get copyWith => __$$ClassesDetailsResponseEntityImplCopyWithImpl<
          _$ClassesDetailsResponseEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassesDetailsResponseEntityImplToJson(
      this,
    );
  }
}

abstract class _ClassesDetailsResponseEntity
    implements ClassesDetailsResponseEntity {
  const factory _ClassesDetailsResponseEntity(
      {final int? status,
      final String? message,
      final List<ClassEntity>? data}) = _$ClassesDetailsResponseEntityImpl;

  factory _ClassesDetailsResponseEntity.fromJson(Map<String, dynamic> json) =
      _$ClassesDetailsResponseEntityImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  List<ClassEntity>? get data;
  @override
  @JsonKey(ignore: true)
  _$$ClassesDetailsResponseEntityImplCopyWith<
          _$ClassesDetailsResponseEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
