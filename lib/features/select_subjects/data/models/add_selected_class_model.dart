import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_selected_class_model.g.dart';

@JsonSerializable()
class AddSelectedClassModel {
  final Map<String, String>? selectedClasses;

  const AddSelectedClassModel({this.selectedClasses});

  Map<String, dynamic> toJson() => _$AddSelectedClassModelToJson(this);
}
