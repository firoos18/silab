import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:silab/features/authentication/data/data_sources/local/authentication_local_datasource.dart';
import 'package:silab/features/authentication/data/data_sources/remote/authentication_api_service.dart';
import 'package:silab/features/authentication/data/repositories/authentication_repository_impl.dart';
import 'package:silab/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:silab/features/authentication/domain/usecases/get_user_token_usecase.dart';
import 'package:silab/features/authentication/domain/usecases/resend_email_verification_otp_usecase.dart';
import 'package:silab/features/authentication/domain/usecases/set_user_token_usecase.dart';
import 'package:silab/features/authentication/domain/usecases/user_login_usecase.dart';
import 'package:silab/features/authentication/domain/usecases/user_register_usecase.dart';
import 'package:silab/features/authentication/domain/usecases/verify_otp_usecase.dart';
import 'package:silab/features/authentication/presentation/bloc/login/login_bloc.dart';
import 'package:silab/features/authentication/presentation/bloc/register/register_bloc.dart';
import 'package:silab/features/authentication/presentation/bloc/verify_otp/verify_otp_bloc.dart';

final injector = GetIt.instance;

Future<void> initializeDependencies() async {
  injector.registerSingleton<SharedPreferences>(
      await SharedPreferences.getInstance());

  injector
      .registerSingleton<AuthenticationApiService>(AuthenticationApiService());
  injector.registerSingleton<AuthenticationLocalDataSource>(
      AuthenticationLocalDataSource(injector()));

  injector.registerSingleton<AuthenticationRepository>(
      AuthenticationRepositoryImpl(injector(), injector()));

  injector.registerSingleton<UserLoginUseCase>(UserLoginUseCase(injector()));
  injector
      .registerSingleton<UserRegisterUseCase>(UserRegisterUseCase(injector()));
  injector.registerSingleton<VerifyOtpUseCase>(VerifyOtpUseCase(injector()));
  injector
      .registerSingleton<GetUserTokenUseCase>(GetUserTokenUseCase(injector()));
  injector
      .registerSingleton<SetUserTokenUseCase>(SetUserTokenUseCase(injector()));
  injector.registerSingleton<ResendEmailVerificationOtpUseCase>(
      ResendEmailVerificationOtpUseCase(injector()));

  injector.registerFactory<LoginBloc>(() => LoginBloc(injector()));
  injector.registerFactory<RegisterBloc>(() => RegisterBloc(injector()));
  injector.registerFactory<VerifyOtpBloc>(() => VerifyOtpBloc(injector()));
}
