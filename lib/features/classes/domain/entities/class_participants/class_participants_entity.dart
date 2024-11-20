import 'package:freezed_annotation/freezed_annotation.dart';

part 'class_participants_entity.freezed.dart';
part 'class_participants_entity.g.dart';

@freezed
class ClassParticipantsEntity with _$ClassParticipantsEntity {
  const factory ClassParticipantsEntity({
    final String? id,
    final String? email,
    final String? fullname,
    final String? nim,
    final List<String>? role,
    final bool? paid,
  }) = _ClassParticipantsEntity;

  factory ClassParticipantsEntity.fromJson(Map<String, dynamic> json) =>
      _$ClassParticipantsEntityFromJson(json);
}
