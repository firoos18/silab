// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_detail_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDetailEntityImpl _$$UserDetailEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$UserDetailEntityImpl(
      id: json['id'] as String?,
      email: json['email'] as String?,
      nim: json['nim'] as String?,
      fullname: json['fullname'] as String?,
      role: (json['role'] as List<dynamic>?)?.map((e) => e as String).toList(),
      paid: json['paid'] as bool?,
    );

Map<String, dynamic> _$$UserDetailEntityImplToJson(
        _$UserDetailEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'nim': instance.nim,
      'fullname': instance.fullname,
      'role': instance.role,
      'paid': instance.paid,
    };
