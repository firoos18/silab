import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab/features/authentication/data/models/login_model.dart';
import 'package:silab/features/authentication/domain/entities/login_data/login_data_entity.dart';
import 'package:silab/features/authentication/domain/usecases/get_user_token_usecase.dart';
import 'package:silab/features/authentication/domain/usecases/user_login_usecase.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final UserLoginUseCase _userLoginUseCase;
  final GetUserTokenUseCase _getUserTokenUseCase;

  LoginBloc(this._userLoginUseCase, this._getUserTokenUseCase)
      : super(LoginInitial()) {
    on<LoginButtonTapped>(onLoginButtonTapped);
    on<ApplicationStarted>(onApplicationStarted);
  }

  void onLoginButtonTapped(LoginEvent event, Emitter<LoginState> emit) async {
    emit(LoginLoading());

    if (event.loginModel != null) {
      final data = await _userLoginUseCase.authenticationRepository
          .userLogin(event.loginModel!);

      data.fold(
        (left) => emit(LoginFailed(message: left.message)),
        (right) => emit(LoginSuccess(loginDataEntity: data.right.data!)),
      );
    } else {
      emit(const LoginFailed(message: "Login Data is Empty"));
    }
  }

  void onApplicationStarted(LoginEvent event, Emitter<LoginState> emit) {
    emit(LoginLoading());

    final token = _getUserTokenUseCase.authenticationRepository.getUserToken();

    token.fold(
      (left) => emit(LoginInitial()),
      (right) => emit(const LoginSuccess()),
    );
  }
}
