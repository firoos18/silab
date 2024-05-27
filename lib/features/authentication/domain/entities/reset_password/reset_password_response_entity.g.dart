// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_password_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResetPasswordResponseEntityImpl _$$ResetPasswordResponseEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ResetPasswordResponseEntityImpl(
      status: (json['status'] as num?)?.toInt(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$ResetPasswordResponseEntityImplToJson(
        _$ResetPasswordResponseEntityImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
