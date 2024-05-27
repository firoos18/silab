part of 'verify_reset_password_otp_bloc.dart';

class VerifyResetPasswordOtpEvent extends Equatable {
  final VerifyResetPasswordOtpModel? verifyResetPasswordOtpData;

  const VerifyResetPasswordOtpEvent({this.verifyResetPasswordOtpData});

  @override
  List<Object?> get props => [verifyResetPasswordOtpData];
}

final class VerifyResetPasswordOtpButtonTapped
    extends VerifyResetPasswordOtpEvent {
  const VerifyResetPasswordOtpButtonTapped({super.verifyResetPasswordOtpData});
}
