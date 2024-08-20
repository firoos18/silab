import 'package:freezed_annotation/freezed_annotation.dart';

part 'registered_class_entity.freezed.dart';
part 'registered_class_entity.g.dart';

@freezed
class RegisteredClassEntity with _$RegisteredClassEntity {
  const factory RegisteredClassEntity({
    final String? id,
    final String? subject,
    final String? name,
    final int? quota,
    final bool? isFull,
    final String? day,
    final String? startAt,
    final String? endAt,
    final String? ruang,
    final List<String>? participants,
    final List<String>? learningModule,
  }) = _RegisteredClassEntity;

  factory RegisteredClassEntity.fromJson(Map<String, dynamic> json) =>
      _$RegisteredClassEntityFromJson(json);
}
