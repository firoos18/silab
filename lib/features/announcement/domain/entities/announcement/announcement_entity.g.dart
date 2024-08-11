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
      desc: json['desc'] as String?,
      posterUrl: json['posterUrl'] as String?,
    );

Map<String, dynamic> _$$AnnouncementEntityImplToJson(
        _$AnnouncementEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'type': instance.type,
      'desc': instance.desc,
      'posterUrl': instance.posterUrl,
    };
