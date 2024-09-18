import 'package:freezed_annotation/freezed_annotation.dart';

part 'selected_subject_entity.freezed.dart';
part 'selected_subject_entity.g.dart';

@freezed
class SelectedSubjectEntity with _$SelectedSubjectEntity {
  const factory SelectedSubjectEntity({
    final String? activationId,
    final List<Map<String, String>>? subjects,
  }) = _SelectedSubjectEntity;

  factory SelectedSubjectEntity.fromJson(Map<String, dynamic> json) =>
      _$SelectedSubjectEntityFromJson(json);
}
