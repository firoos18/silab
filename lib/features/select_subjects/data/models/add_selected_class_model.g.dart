// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_selected_class_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddSelectedClassModel _$AddSelectedClassModelFromJson(
        Map<String, dynamic> json) =>
    AddSelectedClassModel(
      selectedClasses: (json['selectedClasses'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$AddSelectedClassModelToJson(
        AddSelectedClassModel instance) =>
    <String, dynamic>{
      'selectedClasses': instance.selectedClasses,
    };
