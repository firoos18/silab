import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:silab/core/common/entities/class/class_entity.dart';

part 'classes_response_entity.freezed.dart';
part 'classes_response_entity.g.dart';

@freezed
class ClassesResponseEntity with _$ClassesResponseEntity {
  const factory ClassesResponseEntity({
    final String? status,
    final String? message,
    final List<ClassEntity>? data,
  }) = _ClassesResponseEntity;

  factory ClassesResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$ClassesResponseEntityFromJson(json);
}
