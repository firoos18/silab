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
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<SelectedClassEntity>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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
  $Res call({int? status, String? message, List<SelectedClassEntity>? data});
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
              as List<SelectedClassEntity>?,
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
  $Res call({int? status, String? message, List<SelectedClassEntity>? data});
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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$AddSelectedClassResponseEntityImpl(
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
              as List<SelectedClassEntity>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddSelectedClassResponseEntityImpl
    implements _AddSelectedClassResponseEntity {
  const _$AddSelectedClassResponseEntityImpl(
      {this.status, this.message, final List<SelectedClassEntity>? data})
      : _data = data;

  factory _$AddSelectedClassResponseEntityImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AddSelectedClassResponseEntityImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  final List<SelectedClassEntity>? _data;
  @override
  List<SelectedClassEntity>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AddSelectedClassResponseEntity(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddSelectedClassResponseEntityImpl &&
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
          {final int? status,
          final String? message,
          final List<SelectedClassEntity>? data}) =
      _$AddSelectedClassResponseEntityImpl;

  factory _AddSelectedClassResponseEntity.fromJson(Map<String, dynamic> json) =
      _$AddSelectedClassResponseEntityImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  List<SelectedClassEntity>? get data;
  @override
  @JsonKey(ignore: true)
  _$$AddSelectedClassResponseEntityImplCopyWith<
          _$AddSelectedClassResponseEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
