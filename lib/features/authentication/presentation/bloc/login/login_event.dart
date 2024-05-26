part of 'login_bloc.dart';

sealed class LoginEvent extends Equatable {
  final LoginModel? loginModel;

  const LoginEvent({this.loginModel});

  @override
  List<Object?> get props => [loginModel];
}

final class LoginButtonTapped extends LoginEvent {
  const LoginButtonTapped({super.loginModel});
}

final class ApplicationStarted extends LoginEvent {}
