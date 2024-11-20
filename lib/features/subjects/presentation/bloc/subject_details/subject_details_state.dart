part of 'subject_details_bloc.dart';

class SubjectDetailsState extends Equatable {
  final SubjectEntity? subjectEntity;
  final String? message;

  const SubjectDetailsState({this.message, this.subjectEntity});

  @override
  List<Object?> get props => [subjectEntity, message];
}

final class SubjectDetailInitial extends SubjectDetailsState {}

final class SubjectDetailLoading extends SubjectDetailsState {}

final class SubjectDetailLoaded extends SubjectDetailsState {
  const SubjectDetailLoaded({super.subjectEntity});
}

final class SubjectDetailFailed extends SubjectDetailsState {
  const SubjectDetailFailed({super.message});
}
