import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_selected_subjects_model.g.dart';

@JsonSerializable()
class UserSelectedSubjectsModel {
  final List<String>? subjects;

  const UserSelectedSubjectsModel(this.subjects);

  Map<String, dynamic> toJson() => _$UserSelectedSubjectsModelToJson(this);
}
