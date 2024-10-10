import 'package:freezed_annotation/freezed_annotation.dart';

part 'meetings_entity.freezed.dart';
part 'meetings_entity.g.dart';

@freezed
class MeetingsEntity with _$MeetingsEntity {
  const factory MeetingsEntity({
    final String? id,
    final String? meeting_name,
    final String? submitted_at,
    final String? is_attended,
  }) = _MeetingsEntity;

  factory MeetingsEntity.fromJson(Map<String, dynamic> json) =>
      _$MeetingsEntityFromJson(json);
}
