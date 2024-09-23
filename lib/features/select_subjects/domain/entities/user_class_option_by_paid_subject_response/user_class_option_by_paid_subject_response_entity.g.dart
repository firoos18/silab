// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_class_option_by_paid_subject_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserClassOptionByPaidSubjectResponseEntityImpl
    _$$UserClassOptionByPaidSubjectResponseEntityImplFromJson(
            Map<String, dynamic> json) =>
        _$UserClassOptionByPaidSubjectResponseEntityImpl(
          status: json['status'] as String?,
          message: json['message'] as String?,
          data: (json['data'] as List<dynamic>?)
              ?.map((e) => UserClassOptionByPaidSubjectEntity.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$UserClassOptionByPaidSubjectResponseEntityImplToJson(
        _$UserClassOptionByPaidSubjectResponseEntityImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
