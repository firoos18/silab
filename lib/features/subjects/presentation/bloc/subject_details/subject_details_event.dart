part of 'subject_details_bloc.dart';

class SubjectDetailsEvent extends Equatable {
  final String? subjectId;

  const SubjectDetailsEvent({this.subjectId});

  @override
  List<Object?> get props => [];
}

final class SubjectDetailPageOpened extends SubjectDetailsEvent {
  const SubjectDetailPageOpened({super.subjectId});
}
