// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subject_of_class_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubjectOfClassEntityImpl _$$SubjectOfClassEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$SubjectOfClassEntityImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      lecturer: json['lecturer'] as String?,
      classes:
          (json['classes'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$SubjectOfClassEntityImplToJson(
        _$SubjectOfClassEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'lecturer': instance.lecturer,
      'classes': instance.classes,
    };
