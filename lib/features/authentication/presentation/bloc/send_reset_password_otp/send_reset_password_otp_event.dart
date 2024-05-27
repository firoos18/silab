part of 'send_reset_password_otp_bloc.dart';

class SendResetPasswordOtpEvent extends Equatable {
  final SendResetPasswordOtpModel? sendResetPasswordData;

  const SendResetPasswordOtpEvent({this.sendResetPasswordData});

  @override
  List<Object?> get props => [sendResetPasswordData];
}

final class SendResetPasswordOtpButtonTapped extends SendResetPasswordOtpEvent {
  const SendResetPasswordOtpButtonTapped({super.sendResetPasswordData});
}
