part of 'resend_reset_password_otp_bloc.dart';

class ResendResetPasswordOtpState extends Equatable {
  final SendResetPasswordOtpResponseEntity? sendResetPasswordOtpResponseEntity;
  final String? message;

  const ResendResetPasswordOtpState({
    this.message,
    this.sendResetPasswordOtpResponseEntity,
  });

  @override
  List<Object?> get props => [sendResetPasswordOtpResponseEntity, message];
}

final class ResendResetPasswordOtpInitial extends ResendResetPasswordOtpState {}

final class ResendResetPasswordOtpLoading extends ResendResetPasswordOtpState {}

final class ResendResetPasswordOtpSuccess extends ResendResetPasswordOtpState {
  const ResendResetPasswordOtpSuccess(
      {super.sendResetPasswordOtpResponseEntity});
}

final class ResendResetPasswordOtpFailed extends ResendResetPasswordOtpState {
  const ResendResetPasswordOtpFailed({super.message});
}
