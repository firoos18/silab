part of 'authentication_bloc.dart';

class AuthenticationEvent extends Equatable {
  final LoginModel? loginData;

  const AuthenticationEvent({this.loginData});

  @override
  List<Object?> get props => [loginData];
}

final class UserLogin extends AuthenticationEvent {
  const UserLogin({super.loginData});
}

final class AppOpened extends AuthenticationEvent {}
