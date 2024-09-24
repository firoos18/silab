// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selected_subject_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SelectedSubjectResponseEntityImpl
    _$$SelectedSubjectResponseEntityImplFromJson(Map<String, dynamic> json) =>
        _$SelectedSubjectResponseEntityImpl(
          status: json['status'] as String?,
          message: json['message'] as String?,
          data: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  SelectedSubjectEntity.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$SelectedSubjectResponseEntityImplToJson(
        _$SelectedSubjectResponseEntityImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
