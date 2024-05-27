part of 'resend_otp_bloc.dart';

sealed class ResendOtpState extends Equatable {
  final String? message;

  const ResendOtpState({this.message});

  @override
  List<Object?> get props => [message];
}

final class ResendOtpInitial extends ResendOtpState {}

final class ResendOtpLoading extends ResendOtpState {}

final class ResendOtpSuccess extends ResendOtpState {
  const ResendOtpSuccess({super.message});
}

final class ResendOtpFailed extends ResendOtpState {
  const ResendOtpFailed({super.message});
}
