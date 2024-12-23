import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_selected_subject_model.g.dart';

@JsonSerializable()
class AddSelectedSubjectModel {
  final String nim;
  final List<String> subjects;

  const AddSelectedSubjectModel({required this.subjects, required this.nim});

  Map<String, dynamic> toJson() => _$AddSelectedSubjectModelToJson(this);
}
