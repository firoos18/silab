import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:silab/features/authentication/data/models/verify_reset_password_otp_model.dart';
import 'package:silab/features/authentication/domain/entities/verify_reset_password_otp/verify_reset_password_otp_response_entity.dart';
import 'package:silab/features/authentication/domain/usecases/verify_reset_password_otp_usecase.dart';

part 'verify_reset_password_otp_event.dart';
part 'verify_reset_password_otp_state.dart';

class VerifyResetPasswordOtpBloc
    extends Bloc<VerifyResetPasswordOtpEvent, VerifyResetPasswordOtpState> {
  final VerifyResetPasswordOtpUseCase _verifyResetPasswordOtpUseCase;

  VerifyResetPasswordOtpBloc(this._verifyResetPasswordOtpUseCase)
      : super(VerifyResetPasswordOtpInitial()) {
    on<VerifyResetPasswordOtpButtonTapped>(
        onVerifyResetPasswordOtpButtonTapped);
  }

  void onVerifyResetPasswordOtpButtonTapped(VerifyResetPasswordOtpEvent event,
      Emitter<VerifyResetPasswordOtpState> emit) async {
    emit(VerifyResetPasswordOtpLoading());

    if (event.verifyResetPasswordOtpData != null) {
      final data = await _verifyResetPasswordOtpUseCase.authenticationRepository
          .verifyResetPasswordOtp(event.verifyResetPasswordOtpData!);

      data.fold(
        (left) => emit(VerifyResetPasswordOtpFailed(message: left.message)),
        (right) => emit(VerifyResetPasswordOtpSuccess(
            verifyResetPasswordOtpResponseEntity: data.right)),
      );
    } else {
      emit(const VerifyResetPasswordOtpFailed(
          message: "Verify Reset Password OTP Data is Empty"));
    }
  }
}
