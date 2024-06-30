// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class_participants_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClassParticipantsEntityImpl _$$ClassParticipantsEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ClassParticipantsEntityImpl(
      id: json['id'] as String?,
      email: json['email'] as String?,
      fullname: json['fullname'] as String?,
      nim: json['nim'] as String?,
      role: (json['role'] as List<dynamic>?)?.map((e) => e as String).toList(),
      paid: json['paid'] as bool?,
    );

Map<String, dynamic> _$$ClassParticipantsEntityImplToJson(
        _$ClassParticipantsEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'fullname': instance.fullname,
      'nim': instance.nim,
      'role': instance.role,
      'paid': instance.paid,
    };
