import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:silab/core/common/entities/class/class_entity.dart';
import 'package:silab/features/select_subjects/domain/entities/registered_class/registered_class_entity.dart';

part 'selected_subject_subjects.freezed.dart';
part 'selected_subject_subjects.g.dart';

@freezed
class SelectedSubjectSubjectsEntity with _$SelectedSubjectSubjectsEntity {
  const factory SelectedSubjectSubjectsEntity({
    final String? id,
    final String? name,
    final String? lecturer,
    final List<ClassEntity>? classes,
    final int? semester,
    required RegisteredClassEntity? registeredClass,
  }) = _SelectedSubjectSubjectsEntity;

  factory SelectedSubjectSubjectsEntity.fromJson(Map<String, dynamic> json) =>
      _$SelectedSubjectSubjectsEntityFromJson(json);
}
