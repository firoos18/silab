part of 'verify_reset_password_otp_bloc.dart';

class VerifyResetPasswordOtpState extends Equatable {
  final VerifyResetPasswordOtpResponseEntity?
      verifyResetPasswordOtpResponseEntity;
  final String? message;

  const VerifyResetPasswordOtpState(
      {this.message, this.verifyResetPasswordOtpResponseEntity});

  @override
  List<Object?> get props => [verifyResetPasswordOtpResponseEntity, message];
}

final class VerifyResetPasswordOtpInitial extends VerifyResetPasswordOtpState {}

final class VerifyResetPasswordOtpLoading extends VerifyResetPasswordOtpState {}

final class VerifyResetPasswordOtpSuccess extends VerifyResetPasswordOtpState {
  const VerifyResetPasswordOtpSuccess(
      {super.verifyResetPasswordOtpResponseEntity});
}

final class VerifyResetPasswordOtpFailed extends VerifyResetPasswordOtpState {
  const VerifyResetPasswordOtpFailed({super.message});
}
