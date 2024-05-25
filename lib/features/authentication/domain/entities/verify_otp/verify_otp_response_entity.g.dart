// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerifyOtpResponseEntityImpl _$$VerifyOtpResponseEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifyOtpResponseEntityImpl(
      status: (json['status'] as num?)?.toInt(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$VerifyOtpResponseEntityImplToJson(
        _$VerifyOtpResponseEntityImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
