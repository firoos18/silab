import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:silab/features/classes/domain/entities/meetings/meetings_entity.dart';

part 'meetings_response_entity.freezed.dart';
part 'meetings_response_entity.g.dart';

@freezed
class MeetingsResponseEntity with _$MeetingsResponseEntity {
  const factory MeetingsResponseEntity({
    final String? status,
    final String? message,
    final List<MeetingsEntity>? data,
  }) = _MeetingsResponseEntity;

  factory MeetingsResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$MeetingsResponseEntityFromJson(json);
}
