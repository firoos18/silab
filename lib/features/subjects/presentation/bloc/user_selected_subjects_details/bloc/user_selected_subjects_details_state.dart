part of 'user_selected_subjects_details_bloc.dart';

class UserSelectedSubjectsDetailsState extends Equatable {
  final List<SubjectEntity>? subjectDetails;
  final String? message;

  const UserSelectedSubjectsDetailsState({this.message, this.subjectDetails});

  @override
  List<Object?> get props => [subjectDetails, message];
}

final class UserSelectedSubjectsDetailsInitial
    extends UserSelectedSubjectsDetailsState {}

final class UserSelectedSubjectsDetailsLoading
    extends UserSelectedSubjectsDetailsState {}

final class UserSelectedSubjectsDetailsLoaded
    extends UserSelectedSubjectsDetailsState {
  const UserSelectedSubjectsDetailsLoaded({super.subjectDetails});
}

final class UserSelectedSubjectsDetailsFailed
    extends UserSelectedSubjectsDetailsState {
  const UserSelectedSubjectsDetailsFailed({super.message});
}
