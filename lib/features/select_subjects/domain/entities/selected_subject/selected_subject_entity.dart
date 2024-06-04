import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:silab/features/select_subjects/domain/entities/subject/selected_subject_subjects.dart';

part 'selected_subject_entity.freezed.dart';
part 'selected_subject_entity.g.dart';

@freezed
class SelectedSubjectEntity with _$SelectedSubjectEntity {
  const factory SelectedSubjectEntity({
    final String? id,
    final String? userId,
    final List<SelectedSubjectSubjectsEntity>? subjects,
  }) = _SelectedSubjectEntity;

  factory SelectedSubjectEntity.fromJson(Map<String, dynamic> json) =>
      _$SelectedSubjectEntityFromJson(json);
}
