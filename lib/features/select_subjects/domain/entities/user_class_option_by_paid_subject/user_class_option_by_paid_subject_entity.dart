import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_class_option_by_paid_subject_entity.freezed.dart';
part 'user_class_option_by_paid_subject_entity.g.dart';

@freezed
class UserClassOptionByPaidSubjectEntity
    with _$UserClassOptionByPaidSubjectEntity {
  const factory UserClassOptionByPaidSubjectEntity({
    final String? class_id,
    final String? subject_name,
    final String? subject_class,
    final String? semester,
    final String? session_time,
    final String? quota,
    final String? registered_students,
    final String? day,
  }) = _UserClassOptionByPaidSubjectEntity;

  factory UserClassOptionByPaidSubjectEntity.fromJson(
          Map<String, dynamic> json) =>
      _$UserClassOptionByPaidSubjectEntityFromJson(json);
}
