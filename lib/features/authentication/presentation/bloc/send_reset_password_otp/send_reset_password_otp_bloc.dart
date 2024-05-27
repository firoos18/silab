import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:silab/features/authentication/data/models/send_reset_password_otp_model.dart';
import 'package:silab/features/authentication/domain/entities/send_reset_password_otp/send_reset_password_otp_response_entity.dart';
import 'package:silab/features/authentication/domain/usecases/send_reset_password_otp_usecase.dart';

part 'send_reset_password_otp_event.dart';
part 'send_reset_password_otp_state.dart';

class SendResetPasswordOtpBloc
    extends Bloc<SendResetPasswordOtpEvent, SendResetPasswordOtpState> {
  final SendResetPasswordOtpUseCase _sendResetPasswordOtpUseCase;

  SendResetPasswordOtpBloc(this._sendResetPasswordOtpUseCase)
      : super(SendResetPasswordOtpInitial()) {
    on<SendResetPasswordOtpButtonTapped>(onSendResetPasswordOtpButtonTapped);
  }

  void onSendResetPasswordOtpButtonTapped(SendResetPasswordOtpEvent event,
      Emitter<SendResetPasswordOtpState> emit) async {
    emit(SendResetPasswordOtpLoading());

    if (event.sendResetPasswordData != null) {
      final data = await _sendResetPasswordOtpUseCase.authenticationRepository
          .sendResetPasswordOtp(event.sendResetPasswordData!);

      data.fold(
        (left) => emit(SendResetPasswordOtpFailed(message: left.message)),
        (right) => emit(SendResetPasswordOtpSuccess(
            sendResetPasswordOtpResponseEntity: data.right)),
      );
    } else {
      emit(const SendResetPasswordOtpFailed(
          message: "Send Reset Password OTP Data is Empty"));
    }
  }
}
