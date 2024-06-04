part of 'class_by_id_bloc.dart';

class ClassByIdState extends Equatable {
  final ClassEntity? classEntity;
  final String? message;

  const ClassByIdState({this.classEntity, this.message});

  @override
  List<Object?> get props => [classEntity, message];
}

final class ClassByIdInitial extends ClassByIdState {}

final class ClassByIdLoading extends ClassByIdState {}

final class ClassByIdLoaded extends ClassByIdState {
  const ClassByIdLoaded({super.classEntity});
}

final class ClassByIdFailed extends ClassByIdState {
  const ClassByIdFailed({super.message});
}
