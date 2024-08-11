// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selected_subject_subjects.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SelectedSubjectSubjectsEntityImpl
    _$$SelectedSubjectSubjectsEntityImplFromJson(Map<String, dynamic> json) =>
        _$SelectedSubjectSubjectsEntityImpl(
          id: json['id'] as String?,
          name: json['name'] as String?,
          lecturer: json['lecturer'] as String?,
          classes: (json['classes'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          semester: (json['semester'] as num?)?.toInt(),
          registeredClass: json['registeredClass'] == null
              ? null
              : ClassEntity.fromJson(
                  json['registeredClass'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$SelectedSubjectSubjectsEntityImplToJson(
        _$SelectedSubjectSubjectsEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'lecturer': instance.lecturer,
      'classes': instance.classes,
      'semester': instance.semester,
      'registeredClass': instance.registeredClass,
    };
