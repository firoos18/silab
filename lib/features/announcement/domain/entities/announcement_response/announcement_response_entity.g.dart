// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'announcement_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnnouncementResponseEntityImpl _$$AnnouncementResponseEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$AnnouncementResponseEntityImpl(
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : AnnouncementEntity.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AnnouncementResponseEntityImplToJson(
        _$AnnouncementResponseEntityImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
