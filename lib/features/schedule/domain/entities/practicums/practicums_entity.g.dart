// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'practicums_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PracticumsEntityImpl _$$PracticumsEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$PracticumsEntityImpl(
      subject_name: json['subject_name'] as String?,
      subject_class: json['subject_class'] as String?,
      session: json['session'] as String?,
    );

Map<String, dynamic> _$$PracticumsEntityImplToJson(
        _$PracticumsEntityImpl instance) =>
    <String, dynamic>{
      'subject_name': instance.subject_name,
      'subject_class': instance.subject_class,
      'session': instance.session,
    };
