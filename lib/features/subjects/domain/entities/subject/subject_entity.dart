import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:silab/features/subjects/domain/entities/subject/class_entity.dart';

part 'subject_entity.freezed.dart';
part 'subject_entity.g.dart';

@freezed
class SubjectEntity with _$SubjectEntity {
  const factory SubjectEntity({
    final String? id,
    final String? name,
    final String? lecturer,
    final int? semester,
    final List<ClassEntity>? classes,
  }) = _SubjectEntity;

  factory SubjectEntity.fromJson(Map<String, dynamic> json) =>
      _$SubjectEntityFromJson(json);
}
