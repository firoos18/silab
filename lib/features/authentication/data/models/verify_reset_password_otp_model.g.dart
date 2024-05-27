// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_reset_password_otp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyResetPasswordOtpModel _$VerifyResetPasswordOtpModelFromJson(
        Map<String, dynamic> json) =>
    VerifyResetPasswordOtpModel(
      otp: json['otp'] as String?,
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$VerifyResetPasswordOtpModelToJson(
        VerifyResetPasswordOtpModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'otp': instance.otp,
    };
