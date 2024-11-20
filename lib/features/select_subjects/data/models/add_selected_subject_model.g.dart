// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_selected_subject_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddSelectedSubjectModel _$AddSelectedSubjectModelFromJson(
        Map<String, dynamic> json) =>
    AddSelectedSubjectModel(
      subjects:
          (json['subjects'] as List<dynamic>).map((e) => e as String).toList(),
      nim: json['nim'] as String,
    );

Map<String, dynamic> _$AddSelectedSubjectModelToJson(
        AddSelectedSubjectModel instance) =>
    <String, dynamic>{
      'nim': instance.nim,
      'subjects': instance.subjects,
    };
