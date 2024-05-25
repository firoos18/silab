part of 'register_bloc.dart';

sealed class RegisterState extends Equatable {
  final SendOtpEntity? registerData;
  final String? message;

  const RegisterState({this.registerData, this.message});

  @override
  List<Object?> get props => [registerData, message];
}

final class RegisterInitial extends RegisterState {}

final class RegisterLoading extends RegisterState {}

final class RegisterSuccess extends RegisterState {
  const RegisterSuccess({super.registerData});
}

final class RegisterFailed extends RegisterState {
  const RegisterFailed({super.message});
}
