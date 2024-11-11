// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_detail_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDetailResponseEntityImpl _$$UserDetailResponseEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$UserDetailResponseEntityImpl(
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : UserDetailEntity.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserDetailResponseEntityImplToJson(
        _$UserDetailResponseEntityImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
