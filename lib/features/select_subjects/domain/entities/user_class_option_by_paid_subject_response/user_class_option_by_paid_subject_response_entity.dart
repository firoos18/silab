import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:silab/features/select_subjects/domain/entities/user_class_option_by_paid_subject/user_class_option_by_paid_subject_entity.dart';

part 'user_class_option_by_paid_subject_response_entity.freezed.dart';
part 'user_class_option_by_paid_subject_response_entity.g.dart';

@freezed
class UserClassOptionByPaidSubjectResponseEntity
    with _$UserClassOptionByPaidSubjectResponseEntity {
  const factory UserClassOptionByPaidSubjectResponseEntity({
    final String? status,
    final String? message,
    final List<UserClassOptionByPaidSubjectEntity>? data,
  }) = _UserClassOptionByPaidSubjectResponseEntity;

  factory UserClassOptionByPaidSubjectResponseEntity.fromJson(
          Map<String, dynamic> json) =>
      _$UserClassOptionByPaidSubjectResponseEntityFromJson(json);
}
