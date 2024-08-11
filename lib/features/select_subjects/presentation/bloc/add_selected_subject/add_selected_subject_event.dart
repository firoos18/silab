part of 'add_selected_subject_bloc.dart';

class AddSelectedSubjectEvent extends Equatable {
  final List<String>? subjects;

  const AddSelectedSubjectEvent({this.subjects});

  @override
  List<Object?> get props => [subjects];
}

final class AddSelectedSubjectButtonTapped extends AddSelectedSubjectEvent {
  const AddSelectedSubjectButtonTapped({super.subjects});
}
