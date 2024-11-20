// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClassResponseEntityImpl _$$ClassResponseEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ClassResponseEntityImpl(
      status: (json['status'] as num?)?.toInt(),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : ClassEntity.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ClassResponseEntityImplToJson(
        _$ClassResponseEntityImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
