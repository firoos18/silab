import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab/features/authentication/data/models/verify_otp_model.dart';
import 'package:silab/features/authentication/domain/entities/verify_otp/verify_otp_response_entity.dart';
import 'package:silab/features/authentication/domain/usecases/verify_otp_usecase.dart';

part 'verify_otp_event.dart';
part 'verify_otp_state.dart';

class VerifyOtpBloc extends Bloc<VerifyOtpEvent, VerifyOtpState> {
  final VerifyOtpUseCase _verifyOtpUseCase;

  VerifyOtpBloc(this._verifyOtpUseCase) : super(VerifyOtpInitial()) {
    on<VerifyOtpButtonTapped>(onVerifyOtpButtonTapped);
  }

  void onVerifyOtpButtonTapped(
    VerifyOtpEvent event,
    Emitter<VerifyOtpState> emit,
  ) async {
    if (event.verifyOtpData != null) {
      final data = await _verifyOtpUseCase.authenticationRepository
          .verifyOtp(event.verifyOtpData!);

      data.fold(
        (left) => emit(VerifyOtpFailed(message: left.message)),
        (right) => emit(VerifyOtpSuccess(verifyOtpResponseEntity: right)),
      );
    } else {
      emit(const VerifyOtpFailed(message: "OTP Data is Empty"));
    }
  }
}
