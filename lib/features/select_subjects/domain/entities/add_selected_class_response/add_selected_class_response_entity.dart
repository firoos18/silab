import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:silab/features/select_subjects/domain/entities/selected_class/selected_class_entity.dart';

part 'add_selected_class_response_entity.freezed.dart';
part 'add_selected_class_response_entity.g.dart';

@freezed
class AddSelectedClassResponseEntity with _$AddSelectedClassResponseEntity {
  const factory AddSelectedClassResponseEntity({
    final int? status,
    final String? message,
    final List<SelectedClassEntity>? data,
  }) = _AddSelectedClassResponseEntity;

  factory AddSelectedClassResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$AddSelectedClassResponseEntityFromJson(json);
}
