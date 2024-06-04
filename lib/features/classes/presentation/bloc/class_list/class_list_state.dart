part of 'class_list_bloc.dart';

class ClassListState extends Equatable {
  final List<ClassEntity>? classList;
  final String? message;

  const ClassListState({this.classList, this.message});

  @override
  List<Object?> get props => [classList, message];
}

final class ClassListInitial extends ClassListState {}

final class ClassListLoading extends ClassListState {}

final class ClassListLoaded extends ClassListState {
  const ClassListLoaded({super.classList});
}

final class ClassListFailed extends ClassListState {
  const ClassListFailed({super.message});
}
