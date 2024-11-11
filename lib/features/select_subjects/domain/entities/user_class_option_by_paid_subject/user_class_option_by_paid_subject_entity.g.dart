// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_class_option_by_paid_subject_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserClassOptionByPaidSubjectEntityImpl
    _$$UserClassOptionByPaidSubjectEntityImplFromJson(
            Map<String, dynamic> json) =>
        _$UserClassOptionByPaidSubjectEntityImpl(
          class_id: json['class_id'] as String?,
          subject_name: json['subject_name'] as String?,
          subject_class: json['subject_class'] as String?,
          semester: json['semester'] as String?,
          session_time: json['session_time'] as String?,
          quota: json['quota'] as String?,
          registered_students: json['registered_students'] as String?,
        );

Map<String, dynamic> _$$UserClassOptionByPaidSubjectEntityImplToJson(
        _$UserClassOptionByPaidSubjectEntityImpl instance) =>
    <String, dynamic>{
      'class_id': instance.class_id,
      'subject_name': instance.subject_name,
      'subject_class': instance.subject_class,
      'semester': instance.semester,
      'session_time': instance.session_time,
      'quota': instance.quota,
      'registered_students': instance.registered_students,
    };
