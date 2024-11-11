// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClassEntityImpl _$$ClassEntityImplFromJson(Map<String, dynamic> json) =>
    _$ClassEntityImpl(
      id: json['id'] as String?,
      subject_name: json['subject_name'] as String?,
      subject_class: json['subject_class'] as String?,
      day: json['day'] as String?,
      lecturer: json['lecturer'] as String?,
      session_time: json['session_time'] as String?,
    );

Map<String, dynamic> _$$ClassEntityImplToJson(_$ClassEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'subject_name': instance.subject_name,
      'subject_class': instance.subject_class,
      'day': instance.day,
      'lecturer': instance.lecturer,
      'session_time': instance.session_time,
    };
