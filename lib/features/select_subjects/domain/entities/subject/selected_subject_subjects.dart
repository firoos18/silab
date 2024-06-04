import 'package:freezed_annotation/freezed_annotation.dart';

part 'selected_subject_subjects.freezed.dart';
part 'selected_subject_subjects.g.dart';

@freezed
class SelectedSubjectSubjectsEntity with _$SelectedSubjectSubjectsEntity {
  const factory SelectedSubjectSubjectsEntity({
    final String? id,
    final String? name,
    final String? lecturer,
    final List<String>? classes,
  }) = _SelectedSubjectSubjectsEntity;

  factory SelectedSubjectSubjectsEntity.fromJson(Map<String, dynamic> json) =>
      _$SelectedSubjectSubjectsEntityFromJson(json);
}
