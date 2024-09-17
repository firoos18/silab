// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'announcement_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AnnouncementEntity _$AnnouncementEntityFromJson(Map<String, dynamic> json) {
  return _AnnouncementEntity.fromJson(json);
}

/// @nodoc
mixin _$AnnouncementEntity {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;

  /// Serializes this AnnouncementEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AnnouncementEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnnouncementEntityCopyWith<AnnouncementEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnouncementEntityCopyWith<$Res> {
  factory $AnnouncementEntityCopyWith(
          AnnouncementEntity value, $Res Function(AnnouncementEntity) then) =
      _$AnnouncementEntityCopyWithImpl<$Res, AnnouncementEntity>;
  @useResult
  $Res call(
      {String? id,
      String? title,
      String? type,
      String? body,
      String? created_at,
      String? author});
}

/// @nodoc
class _$AnnouncementEntityCopyWithImpl<$Res, $Val extends AnnouncementEntity>
    implements $AnnouncementEntityCopyWith<$Res> {
  _$AnnouncementEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnnouncementEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? type = freezed,
    Object? body = freezed,
    Object? created_at = freezed,
    Object? author = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnnouncementEntityImplCopyWith<$Res>
    implements $AnnouncementEntityCopyWith<$Res> {
  factory _$$AnnouncementEntityImplCopyWith(_$AnnouncementEntityImpl value,
          $Res Function(_$AnnouncementEntityImpl) then) =
      __$$AnnouncementEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? title,
      String? type,
      String? body,
      String? created_at,
      String? author});
}

/// @nodoc
class __$$AnnouncementEntityImplCopyWithImpl<$Res>
    extends _$AnnouncementEntityCopyWithImpl<$Res, _$AnnouncementEntityImpl>
    implements _$$AnnouncementEntityImplCopyWith<$Res> {
  __$$AnnouncementEntityImplCopyWithImpl(_$AnnouncementEntityImpl _value,
      $Res Function(_$AnnouncementEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnnouncementEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? type = freezed,
    Object? body = freezed,
    Object? created_at = freezed,
    Object? author = freezed,
  }) {
    return _then(_$AnnouncementEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnnouncementEntityImpl implements _AnnouncementEntity {
  const _$AnnouncementEntityImpl(
      {this.id,
      this.title,
      this.type,
      this.body,
      this.created_at,
      this.author});

  factory _$AnnouncementEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnnouncementEntityImplFromJson(json);

  @override
  final String? id;
  @override
  final String? title;
  @override
  final String? type;
  @override
  final String? body;
  @override
  final String? created_at;
  @override
  final String? author;

  @override
  String toString() {
    return 'AnnouncementEntity(id: $id, title: $title, type: $type, body: $body, created_at: $created_at, author: $author)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnnouncementEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.author, author) || other.author == author));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, type, body, created_at, author);

  /// Create a copy of AnnouncementEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnnouncementEntityImplCopyWith<_$AnnouncementEntityImpl> get copyWith =>
      __$$AnnouncementEntityImplCopyWithImpl<_$AnnouncementEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnnouncementEntityImplToJson(
      this,
    );
  }
}

abstract class _AnnouncementEntity implements AnnouncementEntity {
  const factory _AnnouncementEntity(
      {final String? id,
      final String? title,
      final String? type,
      final String? body,
      final String? created_at,
      final String? author}) = _$AnnouncementEntityImpl;

  factory _AnnouncementEntity.fromJson(Map<String, dynamic> json) =
      _$AnnouncementEntityImpl.fromJson;

  @override
  String? get id;
  @override
  String? get title;
  @override
  String? get type;
  @override
  String? get body;
  @override
  String? get created_at;
  @override
  String? get author;

  /// Create a copy of AnnouncementEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnnouncementEntityImplCopyWith<_$AnnouncementEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
