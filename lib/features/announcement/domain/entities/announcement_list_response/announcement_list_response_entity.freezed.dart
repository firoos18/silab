// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'announcement_list_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AnnouncementListResponseEntity _$AnnouncementListResponseEntityFromJson(
    Map<String, dynamic> json) {
  return _AnnouncementListResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$AnnouncementListResponseEntity {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<AnnouncementEntity>? get data => throw _privateConstructorUsedError;

  /// Serializes this AnnouncementListResponseEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AnnouncementListResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnnouncementListResponseEntityCopyWith<AnnouncementListResponseEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnouncementListResponseEntityCopyWith<$Res> {
  factory $AnnouncementListResponseEntityCopyWith(
          AnnouncementListResponseEntity value,
          $Res Function(AnnouncementListResponseEntity) then) =
      _$AnnouncementListResponseEntityCopyWithImpl<$Res,
          AnnouncementListResponseEntity>;
  @useResult
  $Res call({int? status, String? message, List<AnnouncementEntity>? data});
}

/// @nodoc
class _$AnnouncementListResponseEntityCopyWithImpl<$Res,
        $Val extends AnnouncementListResponseEntity>
    implements $AnnouncementListResponseEntityCopyWith<$Res> {
  _$AnnouncementListResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnnouncementListResponseEntity
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
              as List<AnnouncementEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnnouncementListResponseEntityImplCopyWith<$Res>
    implements $AnnouncementListResponseEntityCopyWith<$Res> {
  factory _$$AnnouncementListResponseEntityImplCopyWith(
          _$AnnouncementListResponseEntityImpl value,
          $Res Function(_$AnnouncementListResponseEntityImpl) then) =
      __$$AnnouncementListResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, List<AnnouncementEntity>? data});
}

/// @nodoc
class __$$AnnouncementListResponseEntityImplCopyWithImpl<$Res>
    extends _$AnnouncementListResponseEntityCopyWithImpl<$Res,
        _$AnnouncementListResponseEntityImpl>
    implements _$$AnnouncementListResponseEntityImplCopyWith<$Res> {
  __$$AnnouncementListResponseEntityImplCopyWithImpl(
      _$AnnouncementListResponseEntityImpl _value,
      $Res Function(_$AnnouncementListResponseEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnnouncementListResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$AnnouncementListResponseEntityImpl(
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
              as List<AnnouncementEntity>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnnouncementListResponseEntityImpl
    implements _AnnouncementListResponseEntity {
  const _$AnnouncementListResponseEntityImpl(
      {this.status, this.message, final List<AnnouncementEntity>? data})
      : _data = data;

  factory _$AnnouncementListResponseEntityImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AnnouncementListResponseEntityImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  final List<AnnouncementEntity>? _data;
  @override
  List<AnnouncementEntity>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AnnouncementListResponseEntity(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnnouncementListResponseEntityImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, message, const DeepCollectionEquality().hash(_data));

  /// Create a copy of AnnouncementListResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnnouncementListResponseEntityImplCopyWith<
          _$AnnouncementListResponseEntityImpl>
      get copyWith => __$$AnnouncementListResponseEntityImplCopyWithImpl<
          _$AnnouncementListResponseEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnnouncementListResponseEntityImplToJson(
      this,
    );
  }
}

abstract class _AnnouncementListResponseEntity
    implements AnnouncementListResponseEntity {
  const factory _AnnouncementListResponseEntity(
          {final int? status,
          final String? message,
          final List<AnnouncementEntity>? data}) =
      _$AnnouncementListResponseEntityImpl;

  factory _AnnouncementListResponseEntity.fromJson(Map<String, dynamic> json) =
      _$AnnouncementListResponseEntityImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  List<AnnouncementEntity>? get data;

  /// Create a copy of AnnouncementListResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnnouncementListResponseEntityImplCopyWith<
          _$AnnouncementListResponseEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
