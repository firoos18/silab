// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selected_subject_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SelectedSubjectEntityImpl _$$SelectedSubjectEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$SelectedSubjectEntityImpl(
      id: json['id'] as String?,
      userId: json['userId'] as String?,
      subjects: (json['subjects'] as List<dynamic>?)
          ?.map((e) => SubjectEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SelectedSubjectEntityImplToJson(
        _$SelectedSubjectEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'subjects': instance.subjects,
    };
