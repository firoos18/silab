import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab/features/authentication/data/models/send_reset_password_otp_model.dart';
import 'package:silab/features/authentication/domain/entities/send_reset_password_otp/send_reset_password_otp_response_entity.dart';
import 'package:silab/features/authentication/domain/usecases/resend_reset_password_otp_usecase.dart';

part 'resend_reset_password_otp_event.dart';
part 'resend_reset_password_otp_state.dart';

class ResendResetPasswordOtpBloc
    extends Bloc<ResendResetPasswordOtpEvent, ResendResetPasswordOtpState> {
  final ResendResetPasswordOtpUseCase _resendResetPasswordOtpUseCase;

  ResendResetPasswordOtpBloc(this._resendResetPasswordOtpUseCase)
      : super(ResendResetPasswordOtpInitial()) {
    on<ResendResetPasswordOtpButtonTapped>(
        onResendResetPasswordOtpButtonTapped);
  }

  void onResendResetPasswordOtpButtonTapped(ResendResetPasswordOtpEvent event,
      Emitter<ResendResetPasswordOtpState> emit) async {
    emit(ResendResetPasswordOtpLoading());

    if (event.sendResetPasswordOtpData != null) {
      final data = await _resendResetPasswordOtpUseCase.authenticationRepository
          .resendResetPasswordOtp(event.sendResetPasswordOtpData!);

      data.fold(
        (left) => emit(ResendResetPasswordOtpFailed(message: left.message)),
        (right) => emit(ResendResetPasswordOtpSuccess(
            sendResetPasswordOtpResponseEntity: data.right)),
      );
    } else {
      emit(const ResendResetPasswordOtpFailed(
          message: "Resend Reset Password OTP Data is Empty"));
    }
  }
}
