// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selected_subject_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SelectedSubjectEntityImpl _$$SelectedSubjectEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$SelectedSubjectEntityImpl(
      activationId: json['activationId'] as String?,
      status: json['status'] as String?,
      subjects: (json['subjects'] as List<dynamic>?)
          ?.map((e) =>
              SelectedSubjectSubjectsEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SelectedSubjectEntityImplToJson(
        _$SelectedSubjectEntityImpl instance) =>
    <String, dynamic>{
      'activationId': instance.activationId,
      'status': instance.status,
      'subjects': instance.subjects,
    };
