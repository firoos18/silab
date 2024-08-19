part of 'add_selected_class_bloc.dart';

class AddSelectedClassEvent extends Equatable {
  final Map<String, String>? selectedClass;

  const AddSelectedClassEvent({this.selectedClass});

  @override
  List<Object?> get props => [selectedClass];
}

final class AddSelectedClass extends AddSelectedClassEvent {
  const AddSelectedClass({super.selectedClass});
}
