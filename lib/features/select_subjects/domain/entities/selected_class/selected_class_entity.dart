import 'package:freezed_annotation/freezed_annotation.dart';

part 'selected_class_entity.freezed.dart';
part 'selected_class_entity.g.dart';

@freezed
class SelectedClassEntity with _$SelectedClassEntity {
  const factory SelectedClassEntity({
    final String? subjectName,
    final String? className,
  }) = _SelectedClassEntity;

  factory SelectedClassEntity.fromJson(Map<String, dynamic> json) =>
      _$SelectedClassEntityFromJson(json);
}
