import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:silab/core/common/entities/subject/subject_entity.dart';

part 'subject_response_entity.freezed.dart';
part 'subject_response_entity.g.dart';

@freezed
class SubjectResponseEntity with _$SubjectResponseEntity {
  const factory SubjectResponseEntity({
    final int? status,
    final String? message,
    final SubjectEntity? data,
  }) = _SubjectResponseEntity;

  factory SubjectResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$SubjectResponseEntityFromJson(json);
}
