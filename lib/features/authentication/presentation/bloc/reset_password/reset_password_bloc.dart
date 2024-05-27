import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab/features/authentication/data/models/reset_password_model.dart';
import 'package:silab/features/authentication/domain/entities/reset_password/reset_password_response_entity.dart';
import 'package:silab/features/authentication/domain/usecases/reset_password_usecase.dart';

part 'reset_password_event.dart';
part 'reset_password_state.dart';

class ResetPasswordBloc extends Bloc<ResetPasswordEvent, ResetPasswordState> {
  final ResetPasswordUseCase _resetPasswordUseCase;

  ResetPasswordBloc(this._resetPasswordUseCase)
      : super(ResetPasswordInitial()) {
    on<ResetPasswordEvent>(onResetPasswordButtonTapped);
  }

  void onResetPasswordButtonTapped(
      ResetPasswordEvent event, Emitter<ResetPasswordState> emit) async {
    emit(ResetPasswordLoading());

    if (event.resetPasswordData != null) {
      final data = await _resetPasswordUseCase.authenticationRepository
          .resetPassword(event.resetPasswordData!);

      data.fold(
        (left) => emit(ResetPasswordFailed(message: left.message)),
        (right) =>
            emit(ResetPasswordSuccess(resetPasswordResponseEntity: data.right)),
      );
    } else {
      emit(const ResetPasswordFailed(message: "Reset Data is Empty"));
    }
  }
}
