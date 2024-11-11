import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:silab/features/select_subjects/domain/entities/add_subject_subjects/add_subject_subjects_entity.dart';

part 'add_selected_subject_response_entity.freezed.dart';
part 'add_selected_subject_response_entity.g.dart';

@freezed
class AddSelectedSubjectResponseEntity with _$AddSelectedSubjectResponseEntity {
  const factory AddSelectedSubjectResponseEntity({
    final String? status,
    final String? message,
    final AddSubjectSubjectsEntity? data,
  }) = _AddSelectedSubjectResponseEntity;

  factory AddSelectedSubjectResponseEntity.fromJson(
          Map<String, dynamic> json) =>
      _$AddSelectedSubjectResponseEntityFromJson(json);
}
