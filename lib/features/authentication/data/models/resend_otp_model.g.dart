// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resend_otp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResendOtpModel _$ResendOtpModelFromJson(Map<String, dynamic> json) =>
    ResendOtpModel(
      email: json['email'] as String?,
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$ResendOtpModelToJson(ResendOtpModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'email': instance.email,
    };
