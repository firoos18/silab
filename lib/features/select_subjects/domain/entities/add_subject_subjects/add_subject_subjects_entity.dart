import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_subject_subjects_entity.freezed.dart';
part 'add_subject_subjects_entity.g.dart';

@freezed
class AddSubjectSubjectsEntity with _$AddSubjectSubjectsEntity {
  const factory AddSubjectSubjectsEntity({
    final String? id,
    final String? userId,
    final List<String>? subjects,
  }) = _AddSubjectSubjectsEntity;

  factory AddSubjectSubjectsEntity.fromJson(Map<String, dynamic> json) =>
      _$AddSubjectSubjectsEntityFromJson(json);
}
