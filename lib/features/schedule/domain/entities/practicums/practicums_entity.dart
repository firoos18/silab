import 'package:freezed_annotation/freezed_annotation.dart';

part 'practicums_entity.freezed.dart';
part 'practicums_entity.g.dart';

@freezed
class PracticumsEntity with _$PracticumsEntity {
  const factory PracticumsEntity({
    final String? subject_name,
    final String? subject_class,
    final String? session,
  }) = _PracticumsEntity;

  factory PracticumsEntity.fromJson(Map<String, dynamic> json) =>
      _$PracticumsEntityFromJson(json);
}
