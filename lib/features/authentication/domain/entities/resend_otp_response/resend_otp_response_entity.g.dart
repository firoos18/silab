// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resend_otp_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResendOtpResponseEntityImpl _$$ResendOtpResponseEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ResendOtpResponseEntityImpl(
      status: (json['status'] as num?)?.toInt(),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : SendOtpEntity.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResendOtpResponseEntityImplToJson(
        _$ResendOtpResponseEntityImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
