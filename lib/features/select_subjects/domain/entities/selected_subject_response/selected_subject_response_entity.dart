import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:silab/features/select_subjects/domain/entities/selected_subject/selected_subject_entity.dart';

part 'selected_subject_response_entity.freezed.dart';
part 'selected_subject_response_entity.g.dart';

@freezed
class SelectedSubjectResponseEntity with _$SelectedSubjectResponseEntity {
  const factory SelectedSubjectResponseEntity({
    final int? status,
    final String? message,
    final SelectedSubjectEntity? data,
  }) = _SelectedSubjectResponseEntity;

  factory SelectedSubjectResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$SelectedSubjectResponseEntityFromJson(json);
}
