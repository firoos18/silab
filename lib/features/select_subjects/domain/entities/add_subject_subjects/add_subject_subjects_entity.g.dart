// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_subject_subjects_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddSubjectSubjectsEntityImpl _$$AddSubjectSubjectsEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$AddSubjectSubjectsEntityImpl(
      id: json['id'] as String?,
      userId: json['userId'] as String?,
      subjects: (json['subjects'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$AddSubjectSubjectsEntityImplToJson(
        _$AddSubjectSubjectsEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'subjects': instance.subjects,
    };
