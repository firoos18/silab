// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classes_details_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClassesDetailsResponseEntityImpl _$$ClassesDetailsResponseEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ClassesDetailsResponseEntityImpl(
      status: (json['status'] as num?)?.toInt(),
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ClassEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ClassesDetailsResponseEntityImplToJson(
        _$ClassesDetailsResponseEntityImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
