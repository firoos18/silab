import 'package:freezed_annotation/freezed_annotation.dart';

part 'class_entity.freezed.dart';
part 'class_entity.g.dart';

@freezed
class ClassEntity with _$ClassEntity {
  const factory ClassEntity({
    final String? id,
    final String? subject,
    final String? name,
    final int? quota,
    final bool? isFull,
    final String? day,
    final String? startAt,
    final String? endAt,
    final List<String>? participants,
    final List<String>? learningModule,
  }) = _ClassEntity;

  factory ClassEntity.fromJson(Map<String, dynamic> json) =>
      _$ClassEntityFromJson(json);
}
