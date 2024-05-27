part of 'reset_password_bloc.dart';

class ResetPasswordState extends Equatable {
  final ResetPasswordResponseEntity? resetPasswordResponseEntity;
  final String? message;

  const ResetPasswordState({this.message, this.resetPasswordResponseEntity});

  @override
  List<Object?> get props => [resetPasswordResponseEntity, message];
}

final class ResetPasswordInitial extends ResetPasswordState {}

final class ResetPasswordLoading extends ResetPasswordState {}

final class ResetPasswordSuccess extends ResetPasswordState {
  const ResetPasswordSuccess({super.resetPasswordResponseEntity});
}

final class ResetPasswordFailed extends ResetPasswordState {
  const ResetPasswordFailed({super.message});
}
