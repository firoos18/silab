part of 'verify_otp_bloc.dart';

sealed class VerifyOtpState extends Equatable {
  final VerifyOtpResponseEntity? verifyOtpResponseEntity;
  final String? message;

  const VerifyOtpState({this.message, this.verifyOtpResponseEntity});

  @override
  List<Object?> get props => [verifyOtpResponseEntity, message];
}

final class VerifyOtpInitial extends VerifyOtpState {}

final class VerifyOtpLoading extends VerifyOtpState {}

final class VerifyOtpSuccess extends VerifyOtpState {
  const VerifyOtpSuccess({super.verifyOtpResponseEntity});
}

final class VerifyOtpFailed extends VerifyOtpState {
  const VerifyOtpFailed({super.message});
}
