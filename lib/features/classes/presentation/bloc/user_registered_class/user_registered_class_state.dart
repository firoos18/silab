part of 'user_registered_class_bloc.dart';

class UserRegisteredClassState extends Equatable {
  final List<ClassEntity>? registeredClasses;
  final String? message;

  const UserRegisteredClassState({this.message, this.registeredClasses});

  @override
  List<Object?> get props => [registeredClasses, message];
}

final class UserRegisteredClassInitial extends UserRegisteredClassState {}

final class UserRegisteredClassLoading extends UserRegisteredClassState {}

final class UserRegisteredClassLoaded extends UserRegisteredClassState {
  const UserRegisteredClassLoaded({super.registeredClasses});
}

final class UserRegisteredClassFailed extends UserRegisteredClassState {
  const UserRegisteredClassFailed({super.message});
}
