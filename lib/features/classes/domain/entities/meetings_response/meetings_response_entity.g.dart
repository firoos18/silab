// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meetings_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MeetingsResponseEntityImpl _$$MeetingsResponseEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$MeetingsResponseEntityImpl(
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => MeetingsEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MeetingsResponseEntityImplToJson(
        _$MeetingsResponseEntityImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
