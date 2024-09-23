part of 'add_selected_class_bloc.dart';

class AddSelectedClassState extends Equatable {
  final String? message;
  final List<SelectedClassEntity>? selectedClass;

  const AddSelectedClassState({this.message, this.selectedClass});

  @override
  List<Object?> get props => [message, selectedClass];
}

final class AddSelectedClassInitial extends AddSelectedClassState {}

final class AddSelectedClassLoading extends AddSelectedClassState {}

final class AddSelectedClassSuccess extends AddSelectedClassState {}

final class AddSelectedClassFailed extends AddSelectedClassState {
  const AddSelectedClassFailed({super.message});
}
