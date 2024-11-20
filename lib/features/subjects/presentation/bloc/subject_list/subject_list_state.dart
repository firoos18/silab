part of 'subject_list_bloc.dart';

class SubjectListState extends Equatable {
  final List<SubjectEntity>? subjectList;
  final String? message;

  const SubjectListState({this.message, this.subjectList});

  @override
  List<Object?> get props => [subjectList, message];
}

final class SubjectListInitial extends SubjectListState {}

final class SubjectListLoading extends SubjectListState {}

final class SubjectListSuccess extends SubjectListState {
  const SubjectListSuccess({super.subjectList});
}

final class SubjectListFailed extends SubjectListState {
  const SubjectListFailed({super.message});
}
