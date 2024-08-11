// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'announcement_list_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnnouncementListResponseEntityImpl
    _$$AnnouncementListResponseEntityImplFromJson(Map<String, dynamic> json) =>
        _$AnnouncementListResponseEntityImpl(
          status: (json['status'] as num?)?.toInt(),
          message: json['message'] as String?,
          data: (json['data'] as List<dynamic>?)
              ?.map(
                  (e) => AnnouncementEntity.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$AnnouncementListResponseEntityImplToJson(
        _$AnnouncementListResponseEntityImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
