part of 'user_selected_subjects_details_bloc.dart';

class UserSelectedSubjectsDetailsEvent extends Equatable {
  final UserSelectedSubjectsModel? subjects;

  const UserSelectedSubjectsDetailsEvent({this.subjects});

  @override
  List<Object?> get props => [subjects];
}

final class GetUserSelectedSubjectsDetails
    extends UserSelectedSubjectsDetailsEvent {
  const GetUserSelectedSubjectsDetails({super.subjects});
}
