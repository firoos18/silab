// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subject_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubjectEntityImpl _$$SubjectEntityImplFromJson(Map<String, dynamic> json) =>
    _$SubjectEntityImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      lecturer: json['lecturer'] as String?,
      semester: (json['semester'] as num?)?.toInt(),
      classes:
          (json['classes'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$SubjectEntityImplToJson(_$SubjectEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'lecturer': instance.lecturer,
      'semester': instance.semester,
      'classes': instance.classes,
    };
