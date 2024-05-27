// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_password_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResetPasswordModel _$ResetPasswordModelFromJson(Map<String, dynamic> json) =>
    ResetPasswordModel(
      newPassword: json['newPassword'] as String?,
      repeatNewPassword: json['repeatNewPassword'] as String?,
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$ResetPasswordModelToJson(ResetPasswordModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'newPassword': instance.newPassword,
      'repeatNewPassword': instance.repeatNewPassword,
    };
