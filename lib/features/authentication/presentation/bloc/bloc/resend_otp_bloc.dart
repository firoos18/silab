import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab/features/authentication/data/models/resend_otp_model.dart';
import 'package:silab/features/authentication/domain/usecases/resend_email_verification_otp_usecase.dart';

part 'resend_otp_event.dart';
part 'resend_otp_state.dart';

class ResendOtpBloc extends Bloc<ResendOtpEvent, ResendOtpState> {
  final ResendEmailVerificationOtpUseCase _resendEmailVerificationOtpUseCase;

  ResendOtpBloc(this._resendEmailVerificationOtpUseCase)
      : super(ResendOtpInitial()) {
    on<ResendOtpButtonTapped>(onResendOtpButtonTappped);
  }

  void onResendOtpButtonTappped(
    ResendOtpEvent event,
    Emitter<ResendOtpState> emit,
  ) async {
    emit(ResendOtpLoading());

    if (event.resendOtpData != null) {
      final data = await _resendEmailVerificationOtpUseCase
          .authenticationRepository
          .resendEmailVerificationOtp(event.resendOtpData!);

      data.fold(
        (left) => emit(ResendOtpFailed(message: left.message)),
        (right) => emit(ResendOtpSuccess(message: right.message)),
      );
    } else {
      emit(const ResendOtpFailed(message: "OTP Resend Request Data is Empty"));
    }
  }
}
