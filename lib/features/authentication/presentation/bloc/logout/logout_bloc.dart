import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab/features/authentication/domain/usecases/user_log_out_usecase.dart';

part 'logout_event.dart';
part 'logout_state.dart';

class LogoutBloc extends Bloc<LogoutEvent, LogoutState> {
  final UserLogOutUseCase _userLogOutUseCase;

  LogoutBloc(this._userLogOutUseCase) : super(LogOutInitial()) {
    on<LogOutButtonTapped>(onLogOutButtonTapped);
  }

  void onLogOutButtonTapped(
      LogoutEvent event, Emitter<LogoutState> emit) async {
    emit(LogOutLoading());

    final isSuccess =
        await _userLogOutUseCase.authenticationRepository.userLogOut();

    isSuccess.fold(
      (left) => emit(LogOutFailed(message: left.message)),
      (right) => emit(LogOutSuccess(isSuccess: right)),
    );
  }
}
