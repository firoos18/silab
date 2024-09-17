import 'package:freezed_annotation/freezed_annotation.dart';

part 'announcement_entity.freezed.dart';
part 'announcement_entity.g.dart';

@freezed
class AnnouncementEntity with _$AnnouncementEntity {
  const factory AnnouncementEntity({
    final String? id,
    final String? title,
    final String? type,
    final String? body,
    final String? created_at,
    final String? author,
  }) = _AnnouncementEntity;

  factory AnnouncementEntity.fromJson(Map<String, dynamic> json) =>
      _$AnnouncementEntityFromJson(json);
}
