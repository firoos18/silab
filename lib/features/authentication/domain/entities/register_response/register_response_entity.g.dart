// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterDataEntityImpl _$$RegisterDataEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$RegisterDataEntityImpl(
      status: (json['status'] as num?)?.toInt(),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : SendOtpEntity.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RegisterDataEntityImplToJson(
        _$RegisterDataEntityImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
