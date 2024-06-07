import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_selected_subject_model.g.dart';

@JsonSerializable()
class AddSelectedSubjectModel {
  final String userId;
  final List<String> subjects;

  const AddSelectedSubjectModel({required this.subjects, required this.userId});

  Map<String, dynamic> toJson() => _$AddSelectedSubjectModelToJson(this);
}
