// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selected_subject_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SelectedSubjectResponseEntityImpl
    _$$SelectedSubjectResponseEntityImplFromJson(Map<String, dynamic> json) =>
        _$SelectedSubjectResponseEntityImpl(
          status: (json['status'] as num?)?.toInt(),
          message: json['message'] as String?,
          data: json['data'] == null
              ? null
              : SelectedSubjectEntity.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$SelectedSubjectResponseEntityImplToJson(
        _$SelectedSubjectResponseEntityImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
