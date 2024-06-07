part of 'add_selected_subject_bloc.dart';

class AddSelectedSubjectState extends Equatable {
  final AddSubjectSubjectsEntity? selectedSubjectEntity;
  final String? message;

  const AddSelectedSubjectState({this.selectedSubjectEntity, this.message});

  @override
  List<Object?> get props => [selectedSubjectEntity, message];
}

final class AddSelectedSubjectInitial extends AddSelectedSubjectState {}

final class AddSelectedSubjectLoading extends AddSelectedSubjectState {}

final class AddSelectedSubjectSuccess extends AddSelectedSubjectState {
  const AddSelectedSubjectSuccess({super.selectedSubjectEntity});
}

final class AddSelectedSubjectFailed extends AddSelectedSubjectState {
  const AddSelectedSubjectFailed({super.message});
}
