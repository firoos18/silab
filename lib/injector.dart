import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:silab/features/authentication/data/data_sources/local/authentication_local_datasource.dart';
import 'package:silab/features/authentication/data/data_sources/remote/authentication_api_service.dart';
import 'package:silab/features/authentication/data/repositories/authentication_repository_impl.dart';
import 'package:silab/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:silab/features/authentication/domain/usecases/get_user_token_usecase.dart';
import 'package:silab/features/authentication/domain/usecases/resend_email_verification_otp_usecase.dart';
import 'package:silab/features/authentication/domain/usecases/resend_reset_password_otp_usecase.dart';
import 'package:silab/features/authentication/domain/usecases/reset_password_usecase.dart';
import 'package:silab/features/authentication/domain/usecases/send_reset_password_otp_usecase.dart';
import 'package:silab/features/authentication/domain/usecases/set_user_token_usecase.dart';
import 'package:silab/features/authentication/domain/usecases/user_login_usecase.dart';
import 'package:silab/features/authentication/domain/usecases/user_register_usecase.dart';
import 'package:silab/features/authentication/domain/usecases/verify_otp_usecase.dart';
import 'package:silab/features/authentication/domain/usecases/verify_reset_password_otp_usecase.dart';
import 'package:silab/features/authentication/presentation/bloc/login/login_bloc.dart';
import 'package:silab/features/authentication/presentation/bloc/register/register_bloc.dart';
import 'package:silab/features/authentication/presentation/bloc/resend_reset_password_otp/resend_reset_password_otp_bloc.dart';
import 'package:silab/features/authentication/presentation/bloc/reset_password/reset_password_bloc.dart';
import 'package:silab/features/authentication/presentation/bloc/send_reset_password_otp/send_reset_password_otp_bloc.dart';
import 'package:silab/features/authentication/presentation/bloc/verify_otp/verify_otp_bloc.dart';
import 'package:silab/features/authentication/presentation/bloc/verify_reset_password_otp/verify_reset_password_otp_bloc.dart';
import 'package:silab/features/classes/data/data_sources/classes_api_service.dart';
import 'package:silab/features/classes/data/repository/class_repository_impl.dart';
import 'package:silab/features/classes/domain/repository/class_repository.dart';
import 'package:silab/features/classes/domain/usecases/get_class_by_id_usecase.dart';
import 'package:silab/features/classes/domain/usecases/get_class_list_usecase.dart';
import 'package:silab/features/classes/presentation/bloc/class_by_id/class_by_id_bloc.dart';
import 'package:silab/features/classes/presentation/bloc/class_list/class_list_bloc.dart';
import 'package:silab/features/select_subjects/data/data_sources/selected_subject_api_service.dart';
import 'package:silab/features/select_subjects/data/repository/selected_subject_repository_impl.dart';
import 'package:silab/features/select_subjects/domain/repository/selected_subject_repository.dart';
import 'package:silab/features/select_subjects/domain/usecases/get_selected_subject_by_nim_usecase.dart';
import 'package:silab/features/select_subjects/presentation/bloc/selected_subject_by_nim_bloc.dart';
import 'package:silab/features/subjects/data/data_sources/subject_api_service.dart';
import 'package:silab/features/subjects/data/repository/subject_repository_impl.dart';
import 'package:silab/features/subjects/domain/repository/subject_repository.dart';
import 'package:silab/features/subjects/domain/usecases/get_subject_details_usecase.dart';
import 'package:silab/features/subjects/presentation/bloc/subject_details_bloc.dart';
import 'package:silab/features/user_details/data/data_sources/user_api_service.dart';
import 'package:silab/features/user_details/data/repositories/user_repository_impl.dart';
import 'package:silab/features/user_details/domain/repositories/user_repository.dart';
import 'package:silab/features/user_details/domain/usecases/get_user_details_usecase.dart';
import 'package:silab/features/user_details/presentation/bloc/user_details_bloc.dart';

final injector = GetIt.instance;

Future<void> initializeDependencies() async {
  // Shared Preferences
  injector.registerSingleton<SharedPreferences>(
      await SharedPreferences.getInstance());

  // Data Sources
  injector
      .registerSingleton<AuthenticationApiService>(AuthenticationApiService());
  injector.registerSingleton<AuthenticationLocalDataSource>(
      AuthenticationLocalDataSource(injector()));
  injector.registerSingleton<UserApiService>(UserApiService(injector()));
  injector.registerSingleton<SelectedSubjectApiService>(
      SelectedSubjectApiService(injector()));
  injector.registerSingleton<ClassesApiService>(ClassesApiService(injector()));
  injector.registerSingleton<SubjectApiService>(SubjectApiService(injector()));

  // Repositories
  injector.registerSingleton<AuthenticationRepository>(
      AuthenticationRepositoryImpl(injector(), injector()));
  injector.registerSingleton<UserRepository>(UserRepositoryImpl(injector()));
  injector.registerSingleton<SelectedSubjectRepository>(
      SelectedSubjectRepositoryImpl(injector()));
  injector.registerSingleton<ClassRepository>(ClassRepositoryImpl(injector()));
  injector
      .registerSingleton<SubjectRepository>(SubjectRepositoryImpl(injector()));

  // UseCases
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
  injector.registerSingleton<ResetPasswordUseCase>(
      ResetPasswordUseCase(injector()));
  injector.registerSingleton<SendResetPasswordOtpUseCase>(
      SendResetPasswordOtpUseCase(injector()));
  injector.registerSingleton<ResendResetPasswordOtpUseCase>(
      ResendResetPasswordOtpUseCase(injector()));
  injector.registerSingleton<VerifyResetPasswordOtpUseCase>(
      VerifyResetPasswordOtpUseCase(injector()));
  injector.registerSingleton<GetUserDetailsUseCase>(
      GetUserDetailsUseCase(injector()));
  injector.registerSingleton<GetSelectedSubjectByNimUsecase>(
      GetSelectedSubjectByNimUsecase(injector()));
  injector
      .registerSingleton<GetClassByIdUseCase>(GetClassByIdUseCase(injector()));
  injector
      .registerSingleton<GetClassListUseCase>(GetClassListUseCase(injector()));
  injector.registerSingleton<GetSubjectDetailsUseCase>(
      GetSubjectDetailsUseCase(injector()));

  // BLoCs
  injector.registerFactory<LoginBloc>(() => LoginBloc(injector(), injector()));
  injector.registerFactory<RegisterBloc>(() => RegisterBloc(injector()));
  injector.registerFactory<VerifyOtpBloc>(() => VerifyOtpBloc(injector()));
  injector
      .registerFactory<ResetPasswordBloc>(() => ResetPasswordBloc(injector()));
  injector.registerFactory<SendResetPasswordOtpBloc>(
      () => SendResetPasswordOtpBloc(injector()));
  injector.registerFactory<ResendResetPasswordOtpBloc>(
      () => ResendResetPasswordOtpBloc(injector()));
  injector.registerFactory<VerifyResetPasswordOtpBloc>(
      () => VerifyResetPasswordOtpBloc(injector()));
  injector.registerFactory<UserDetailsBloc>(
      () => UserDetailsBloc(injector(), injector()));
  injector.registerFactory<SelectedSubjectByNimBloc>(
      () => SelectedSubjectByNimBloc(injector(), injector()));
  injector.registerFactory<ClassListBloc>(() => ClassListBloc(injector()));
  injector.registerFactory<ClassByIdBloc>(() => ClassByIdBloc(injector()));
  injector.registerFactory<SubjectDetailsBloc>(
      () => SubjectDetailsBloc(injector()));
}
