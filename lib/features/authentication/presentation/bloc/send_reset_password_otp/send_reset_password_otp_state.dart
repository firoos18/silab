part of 'send_reset_password_otp_bloc.dart';

class SendResetPasswordOtpState extends Equatable {
  final SendResetPasswordOtpResponseEntity? sendResetPasswordOtpResponseEntity;
  final String? message;

  const SendResetPasswordOtpState({
    this.message,
    this.sendResetPasswordOtpResponseEntity,
  });

  @override
  List<Object?> get props => [sendResetPasswordOtpResponseEntity, message];
}

final class SendResetPasswordOtpInitial extends SendResetPasswordOtpState {}

final class SendResetPasswordOtpLoading extends SendResetPasswordOtpState {}

final class SendResetPasswordOtpSuccess extends SendResetPasswordOtpState {
  const SendResetPasswordOtpSuccess({super.sendResetPasswordOtpResponseEntity});
}

final class SendResetPasswordOtpFailed extends SendResetPasswordOtpState {
  const SendResetPasswordOtpFailed({super.message});
}
