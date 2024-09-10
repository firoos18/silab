// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_data_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginDataEntityImpl _$$LoginDataEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginDataEntityImpl(
      accessToken: json['accessToken'] as String?,
      refreshToken: json['refreshToken'] as String?,
    );

Map<String, dynamic> _$$LoginDataEntityImplToJson(
        _$LoginDataEntityImpl instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };
