part of 'verify_otp_bloc.dart';

sealed class VerifyOtpEvent extends Equatable {
  final VerifyOtpModel? verifyOtpData;

  const VerifyOtpEvent({this.verifyOtpData});

  @override
  List<Object?> get props => [verifyOtpData];
}

final class VerifyOtpButtonTapped extends VerifyOtpEvent {
  const VerifyOtpButtonTapped({super.verifyOtpData});
}
