part of 'logout_bloc.dart';

class LogoutState extends Equatable {
  final bool? isSuccess;
  final String? message;

  const LogoutState({this.isSuccess, this.message});

  @override
  List<Object?> get props => [isSuccess, message];
}

final class LogOutInitial extends LogoutState {}

final class LogOutLoading extends LogoutState {}

final class LogOutSuccess extends LogoutState {
  const LogOutSuccess({super.isSuccess});
}

final class LogOutFailed extends LogoutState {
  const LogOutFailed({super.message});
}
