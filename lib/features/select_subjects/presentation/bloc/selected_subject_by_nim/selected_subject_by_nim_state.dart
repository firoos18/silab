part of 'selected_subject_by_nim_bloc.dart';

class SelectedSubjectByNimState extends Equatable {
  final SelectedSubjectEntity? selectedSubjectEntity;
  final String? message;

  const SelectedSubjectByNimState({this.selectedSubjectEntity, this.message});

  @override
  List<Object?> get props => [];
}

final class SelectedSubjectByNimInitial extends SelectedSubjectByNimState {}

final class SelectedSubjectByNimLoading extends SelectedSubjectByNimState {}

final class SelectedSubjectByNimLoaded extends SelectedSubjectByNimState {
  const SelectedSubjectByNimLoaded({super.selectedSubjectEntity});
}

final class SelectedSubjectByNimFailed extends SelectedSubjectByNimState {
  const SelectedSubjectByNimFailed({super.message});
}
