// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_reset_password_otp_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerifyResetPasswordOtpResponseEntityImpl
    _$$VerifyResetPasswordOtpResponseEntityImplFromJson(
            Map<String, dynamic> json) =>
        _$VerifyResetPasswordOtpResponseEntityImpl(
          status: (json['status'] as num?)?.toInt(),
          message: json['message'] as String?,
        );

Map<String, dynamic> _$$VerifyResetPasswordOtpResponseEntityImplToJson(
        _$VerifyResetPasswordOtpResponseEntityImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
