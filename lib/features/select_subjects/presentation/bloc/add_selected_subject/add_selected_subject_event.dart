part of 'add_selected_subject_bloc.dart';

class AddSelectedSubjectEvent extends Equatable {
  final AddSelectedSubjectModel? addSelectedSubjectData;

  const AddSelectedSubjectEvent({this.addSelectedSubjectData});

  @override
  List<Object?> get props => [addSelectedSubjectData];
}

final class AddSelectedSubjectButtonTapped extends AddSelectedSubjectEvent {
  const AddSelectedSubjectButtonTapped({super.addSelectedSubjectData});
}
