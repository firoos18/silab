// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClassEntityImpl _$$ClassEntityImplFromJson(Map<String, dynamic> json) =>
    _$ClassEntityImpl(
      id: json['id'] as String?,
      subject: json['subject'] == null
          ? null
          : SubjectOfClassEntity.fromJson(
              json['subject'] as Map<String, dynamic>),
      name: json['name'] as String?,
      quota: (json['quota'] as num?)?.toInt(),
      isFull: json['isFull'] as bool?,
      day: json['day'] as String?,
      startAt: json['startAt'] as String?,
      endAt: json['endAt'] as String?,
      participants: (json['participants'] as List<dynamic>?)
          ?.map((e) =>
              ClassParticipantsEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      learningModule: (json['learningModule'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$ClassEntityImplToJson(_$ClassEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'subject': instance.subject,
      'name': instance.name,
      'quota': instance.quota,
      'isFull': instance.isFull,
      'day': instance.day,
      'startAt': instance.startAt,
      'endAt': instance.endAt,
      'participants': instance.participants,
      'learningModule': instance.learningModule,
    };