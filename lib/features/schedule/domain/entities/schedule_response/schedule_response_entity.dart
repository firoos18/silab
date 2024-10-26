import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:silab/features/schedule/domain/entities/schedule/schedule_entity.dart';

part 'schedule_response_entity.freezed.dart';
part 'schedule_response_entity.g.dart';

@freezed
class ScheduleResponseEntity with _$ScheduleResponseEntity {
  const factory ScheduleResponseEntity({
    final String? status,
    final String? message,
    final List<ScheduleEntity>? data,
  }) = _ScheduleResponseEntity;

  factory ScheduleResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$ScheduleResponseEntityFromJson(json);
}
