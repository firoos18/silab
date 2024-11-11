import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:silab/features/announcement/domain/entities/announcement/announcement_entity.dart';

part 'announcement_response_entity.freezed.dart';
part 'announcement_response_entity.g.dart';

@freezed
class AnnouncementResponseEntity with _$AnnouncementResponseEntity {
  const factory AnnouncementResponseEntity({
    final String? status,
    final String? message,
    final AnnouncementEntity? data,
  }) = _AnnouncementResponseEntity;

  factory AnnouncementResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$AnnouncementResponseEntityFromJson(json);
}
