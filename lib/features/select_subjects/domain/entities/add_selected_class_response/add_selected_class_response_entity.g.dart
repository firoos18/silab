// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_selected_class_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddSelectedClassResponseEntityImpl
    _$$AddSelectedClassResponseEntityImplFromJson(Map<String, dynamic> json) =>
        _$AddSelectedClassResponseEntityImpl(
          status: (json['status'] as num?)?.toInt(),
          message: json['message'] as String?,
          data: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  SelectedClassEntity.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$AddSelectedClassResponseEntityImplToJson(
        _$AddSelectedClassResponseEntityImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
