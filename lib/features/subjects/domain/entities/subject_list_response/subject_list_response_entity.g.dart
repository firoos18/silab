// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subject_list_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubjectListResponseEntityImpl _$$SubjectListResponseEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$SubjectListResponseEntityImpl(
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => SubjectEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SubjectListResponseEntityImplToJson(
        _$SubjectListResponseEntityImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
