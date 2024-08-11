part of 'subject_list_bloc.dart';

class SubjectListEvent extends Equatable {
  final int? semester;

  const SubjectListEvent({this.semester});

  @override
  List<Object?> get props => [semester];
}

final class GetSubjectList extends SubjectListEvent {
  const GetSubjectList({super.semester});
}
