// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'announcement_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnnouncementEntityImpl _$$AnnouncementEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$AnnouncementEntityImpl(
      id: json['id'] as String?,
      title: json['title'] as String?,
      type: json['type'] as String?,
      body: json['body'] as String?,
      created_at: json['created_at'] as String?,
      author: json['author'] as String?,
    );

Map<String, dynamic> _$$AnnouncementEntityImplToJson(
        _$AnnouncementEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'type': instance.type,
      'body': instance.body,
      'created_at': instance.created_at,
      'author': instance.author,
    };
