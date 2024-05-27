part of 'resend_reset_password_otp_bloc.dart';

class ResendResetPasswordOtpEvent extends Equatable {
  final SendResetPasswordOtpModel? sendResetPasswordOtpData;

  const ResendResetPasswordOtpEvent({this.sendResetPasswordOtpData});

  @override
  List<Object?> get props => [sendResetPasswordOtpData];
}

final class ResendResetPasswordOtpButtonTapped
    extends ResendResetPasswordOtpEvent {
  const ResendResetPasswordOtpButtonTapped({super.sendResetPasswordOtpData});
}
