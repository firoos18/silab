// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selected_subject_subjects.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SelectedSubjectSubjectsEntityImpl
    _$$SelectedSubjectSubjectsEntityImplFromJson(Map<String, dynamic> json) =>
        _$SelectedSubjectSubjectsEntityImpl(
          subject: json['subject'] as String?,
          semester: json['semester'] as String?,
          registeredClass: json['registeredClass'] == null
              ? null
              : RegisteredClassEntity.fromJson(
                  json['registeredClass'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$SelectedSubjectSubjectsEntityImplToJson(
        _$SelectedSubjectSubjectsEntityImpl instance) =>
    <String, dynamic>{
      'subject': instance.subject,
      'semester': instance.semester,
      'registeredClass': instance.registeredClass,
    };
