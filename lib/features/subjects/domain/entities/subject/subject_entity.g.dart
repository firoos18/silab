// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subject_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubjectEntityImpl _$$SubjectEntityImplFromJson(Map<String, dynamic> json) =>
    _$SubjectEntityImpl(
      id: json['id'] as String?,
      subject_name: json['subject_name'] as String?,
      subject_code: json['subject_code'] as String?,
      semester: json['semester'] as String?,
    );

Map<String, dynamic> _$$SubjectEntityImplToJson(_$SubjectEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'subject_name': instance.subject_name,
      'subject_code': instance.subject_code,
      'semester': instance.semester,
    };
