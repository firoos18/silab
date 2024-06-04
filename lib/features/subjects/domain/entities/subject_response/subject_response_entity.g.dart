// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subject_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubjectResponseEntityImpl _$$SubjectResponseEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$SubjectResponseEntityImpl(
      status: (json['status'] as num?)?.toInt(),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : SubjectEntity.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SubjectResponseEntityImplToJson(
        _$SubjectResponseEntityImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
