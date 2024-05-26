part of 'resend_otp_bloc.dart';

sealed class ResendOtpEvent extends Equatable {
  final ResendOtpModel? resendOtpData;

  const ResendOtpEvent({this.resendOtpData});

  @override
  List<Object?> get props => [resendOtpData];
}

final class ResendOtpButtonTapped extends ResendOtpEvent {
  const ResendOtpButtonTapped({super.resendOtpData});
}
