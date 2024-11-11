import 'package:equatable/equatable.dart';
import 'package:silab/features/select_subjects/domain/entities/user_class_option_by_paid_subject/user_class_option_by_paid_subject_entity.dart';

class UserClassOptionByPaidSubjectState extends Equatable {
  final List<UserClassOptionByPaidSubjectEntity>?
      userClassOptionByPaidSubjectEntity;
  final String? message;

  const UserClassOptionByPaidSubjectState({
    this.message,
    this.userClassOptionByPaidSubjectEntity,
  });

  @override
  List<Object?> get props => [userClassOptionByPaidSubjectEntity, message];
}

final class UserClassOptionByPaidSubjectInitial
    extends UserClassOptionByPaidSubjectState {}

final class UserClassOptionByPaidSubjectLoading
    extends UserClassOptionByPaidSubjectState {}

final class UserClassOptionByPaidSubjectLoaded
    extends UserClassOptionByPaidSubjectState {
  const UserClassOptionByPaidSubjectLoaded(
      {super.userClassOptionByPaidSubjectEntity});
}

final class UserClassOptionByPaidSubjectFailed
    extends UserClassOptionByPaidSubjectState {
  const UserClassOptionByPaidSubjectFailed({super.message});
}
