// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classes_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClassesResponseEntityImpl _$$ClassesResponseEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ClassesResponseEntityImpl(
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ClassEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ClassesResponseEntityImplToJson(
        _$ClassesResponseEntityImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
