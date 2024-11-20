import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:silab/features/subjects/domain/entities/subject/subject_entity.dart';

part 'user_selected_subjects_model.g.dart';

@JsonSerializable()
class UserSelectedSubjectsModel {
  final List<SubjectEntity>? subjects;

  const UserSelectedSubjectsModel(this.subjects);

  Map<String, dynamic> toJson() => _$UserSelectedSubjectsModelToJson(this);
}
