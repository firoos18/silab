import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:silab/features/schedule/domain/entities/practicums/practicums_entity.dart';

part 'schedule_entity.freezed.dart';
part 'schedule_entity.g.dart';

@freezed
class ScheduleEntity with _$ScheduleEntity {
  const factory ScheduleEntity({
    final String? day,
    final List<PracticumsEntity>? practicums,
  }) = _ScheduleEntity;

  factory ScheduleEntity.fromJson(Map<String, dynamic> json) =>
      _$ScheduleEntityFromJson(json);
}
