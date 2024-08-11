import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:silab/features/announcement/domain/entities/announcement/announcement_entity.dart';

part 'announcement_list_response_entity.freezed.dart';
part 'announcement_list_response_entity.g.dart';

@freezed
class AnnouncementListResponseEntity with _$AnnouncementListResponseEntity {
  const factory AnnouncementListResponseEntity({
    final int? status,
    final String? message,
    final List<AnnouncementEntity>? data,
  }) = _AnnouncementListResponseEntity;

  factory AnnouncementListResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$AnnouncementListResponseEntityFromJson(json);
}
