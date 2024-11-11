import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:silab/features/authentication/data/models/login_model.dart';
import 'package:silab/features/authentication/domain/entities/login_data/login_data_entity.dart';
import 'package:silab/features/authentication/domain/usecases/get_access_token_expiry.dart';
import 'package:silab/features/authentication/domain/usecases/get_user_access_token_usecase.dart';
import 'package:silab/features/authentication/domain/usecases/user_login_usecase.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final UserLoginUsecase _userLoginUsecase;
  final GetUserAccessTokenUsecase _getUserAccessTokenUsecase;
  final GetAccessTokenExpiry _getAccessTokenExpiry;

  AuthenticationBloc(
    this._userLoginUsecase,
    this._getUserAccessTokenUsecase,
    this._getAccessTokenExpiry,
  ) : super(AuthenticationInitial()) {
    on<UserLogin>(onUserLogin);
    on<AppOpened>(onAppOpened);
    on<CheckAccessTokenExpiry>(onCheckAccessTokenExpiry);
  }

  void onUserLogin(
    AuthenticationEvent event,
    Emitter<AuthenticationState> emit,
  ) async {
    emit(AuthenticationLoading());
    final data = await _userLoginUsecase.authenticationRepository
        .userLogin(loginData: event.loginData);

    data.fold(
      (left) => emit(AuthenticationFailed(message: left.message)),
      (right) => emit(AuthenticationSuccess(data: right.data)),
    );
  }

  void onAppOpened(
    AuthenticationEvent event,
    Emitter<AuthenticationState> emit,
  ) async {
    final data = _getUserAccessTokenUsecase.authenticationRepository
        .getUserAccessToken();

    data.fold(
      (left) => emit(AuthenticationInitial()),
      (right) => emit(const AuthenticationSuccess()),
    );
  }

  void onCheckAccessTokenExpiry(
    AuthenticationEvent event,
    Emitter<AuthenticationState> emit,
  ) async {
    final expiryResult =
        _getAccessTokenExpiry.authenticationRepository.getAccessTokenExpiry();

    expiryResult.fold(
      (left) {
        emit(AuthenticationFailed(message: left.message));
      },
      (right) {
        final expiryTime = DateTime.fromMillisecondsSinceEpoch(right * 1000);
        if (expiryTime.isBefore(DateTime.now())) {
          emit(AccessTokenExpired());
        } else {
          emit(const AuthenticationSuccess());
        }
      },
    );
  }
}
