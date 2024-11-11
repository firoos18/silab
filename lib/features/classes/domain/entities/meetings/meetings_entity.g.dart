// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meetings_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MeetingsEntityImpl _$$MeetingsEntityImplFromJson(Map<String, dynamic> json) =>
    _$MeetingsEntityImpl(
      id: json['id'] as String?,
      meeting_name: json['meeting_name'] as String?,
      submitted_at: json['submitted_at'] as String?,
      is_attended: json['is_attended'] as bool?,
    );

Map<String, dynamic> _$$MeetingsEntityImplToJson(
        _$MeetingsEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'meeting_name': instance.meeting_name,
      'submitted_at': instance.submitted_at,
      'is_attended': instance.is_attended,
    };
