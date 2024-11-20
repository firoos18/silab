import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_selected_class_response_entity.freezed.dart';
part 'add_selected_class_response_entity.g.dart';

@freezed
class AddSelectedClassResponseEntity with _$AddSelectedClassResponseEntity {
  const factory AddSelectedClassResponseEntity({
    final String? status,
    final String? message,
  }) = _AddSelectedClassResponseEntity;

  factory AddSelectedClassResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$AddSelectedClassResponseEntityFromJson(json);
}
