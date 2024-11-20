// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScheduleEntityImpl _$$ScheduleEntityImplFromJson(Map<String, dynamic> json) =>
    _$ScheduleEntityImpl(
      day: json['day'] as String?,
      practicums: (json['practicums'] as List<dynamic>?)
          ?.map((e) => PracticumsEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ScheduleEntityImplToJson(
        _$ScheduleEntityImpl instance) =>
    <String, dynamic>{
      'day': instance.day,
      'practicums': instance.practicums,
    };
