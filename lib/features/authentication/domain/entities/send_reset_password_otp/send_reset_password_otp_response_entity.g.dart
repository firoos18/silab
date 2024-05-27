// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_reset_password_otp_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SendResetPasswordOtpResponseEntityImpl
    _$$SendResetPasswordOtpResponseEntityImplFromJson(
            Map<String, dynamic> json) =>
        _$SendResetPasswordOtpResponseEntityImpl(
          status: (json['status'] as num?)?.toInt(),
          message: json['message'] as String?,
          data: json['data'] == null
              ? null
              : SendOtpEntity.fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$SendResetPasswordOtpResponseEntityImplToJson(
        _$SendResetPasswordOtpResponseEntityImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
