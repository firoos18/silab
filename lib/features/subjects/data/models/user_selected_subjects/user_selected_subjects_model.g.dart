// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_selected_subjects_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserSelectedSubjectsModel _$UserSelectedSubjectsModelFromJson(
        Map<String, dynamic> json) =>
    UserSelectedSubjectsModel(
      (json['subjects'] as List<dynamic>?)
          ?.map((e) => SubjectEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UserSelectedSubjectsModelToJson(
        UserSelectedSubjectsModel instance) =>
    <String, dynamic>{
      'subjects': instance.subjects,
    };
