// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScheduleResponseEntityImpl _$$ScheduleResponseEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ScheduleResponseEntityImpl(
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ScheduleEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ScheduleResponseEntityImplToJson(
        _$ScheduleResponseEntityImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
