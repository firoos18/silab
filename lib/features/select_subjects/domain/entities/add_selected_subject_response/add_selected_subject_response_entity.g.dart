// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_selected_subject_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddSelectedSubjectResponseEntityImpl
    _$$AddSelectedSubjectResponseEntityImplFromJson(
            Map<String, dynamic> json) =>
        _$AddSelectedSubjectResponseEntityImpl(
          status: (json['status'] as num?)?.toInt(),
          message: json['message'] as String?,
          data: json['data'] == null
              ? null
              : AddSubjectSubjectsEntity.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$AddSelectedSubjectResponseEntityImplToJson(
        _$AddSelectedSubjectResponseEntityImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
