// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterModel _$RegisterModelFromJson(Map<String, dynamic> json) =>
    RegisterModel(
      email: json['email'] as String?,
      fullname: json['fullname'] as String?,
      nim: json['nim'] as String?,
      password: json['password'] as String?,
      repeatPassword: json['repeatPassword'] as String?,
    );

Map<String, dynamic> _$RegisterModelToJson(RegisterModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'repeatPassword': instance.repeatPassword,
      'fullname': instance.fullname,
      'nim': instance.nim,
    };
