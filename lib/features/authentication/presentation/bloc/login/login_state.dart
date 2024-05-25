part of 'login_bloc.dart';

sealed class LoginState extends Equatable {
  final LoginDataEntity? loginDataEntity;
  final String? message;

  const LoginState({this.loginDataEntity, this.message});

  @override
  List<Object?> get props => [];
}

final class LoginInitial extends LoginState {}

final class LoginLoading extends LoginState {}

final class LoginSuccess extends LoginState {
  const LoginSuccess({super.loginDataEntity});
}

final class LoginFailed extends LoginState {
  const LoginFailed({super.message});
}
