// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttendanceEntityImpl _$$AttendanceEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$AttendanceEntityImpl(
      status: json['status'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$AttendanceEntityImplToJson(
        _$AttendanceEntityImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
