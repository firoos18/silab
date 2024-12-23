import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:silab/features/announcement/data/data_sources/announcement_api_service.dart';
import 'package:silab/features/announcement/data/repository/announcement_repository_impl.dart';
import 'package:silab/features/announcement/domain/repository/announcement_repository.dart';
import 'package:silab/features/announcement/domain/usecases/get_all_announcements_usecase.dart';
import 'package:silab/features/announcement/domain/usecases/get_announcement_usecase.dart';
import 'package:silab/features/announcement/presentation/blocs/get_all_announcements/get_all_announcements_bloc.dart';
import 'package:silab/features/announcement/presentation/blocs/get_announcement/get_announcement_bloc.dart';
import 'package:silab/features/authentication/data/data_sources/local/authentication_local_datasource.dart';
import 'package:silab/features/authentication/data/data_sources/remote/authentication_api_service.dart';
import 'package:silab/features/authentication/data/repositories/authentication_repository_impl.dart';
import 'package:silab/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:silab/features/authentication/domain/usecases/get_access_token_expiry.dart';
import 'package:silab/features/authentication/domain/usecases/get_user_access_token_usecase.dart';
import 'package:silab/features/authentication/domain/usecases/user_login_usecase.dart';
import 'package:silab/features/authentication/presentation/bloc/authentication_bloc.dart';
import 'package:silab/features/classes/data/data_sources/classes_api_service.dart';
import 'package:silab/features/classes/data/repository/class_repository_impl.dart';
import 'package:silab/features/classes/domain/repository/class_repository.dart';
import 'package:silab/features/classes/domain/usecases/add_user_attendances_usecase.dart';
import 'package:silab/features/classes/domain/usecases/get_user_meetings_data_usecase.dart';
import 'package:silab/features/classes/domain/usecases/get_user_registered_classes_usecase.dart';
import 'package:silab/features/classes/presentation/bloc/user_attendances/user_attendances_bloc.dart';
import 'package:silab/features/classes/presentation/bloc/user_meetings/user_meetings_bloc.dart';
import 'package:silab/features/classes/presentation/bloc/user_registered_class/user_registered_class_bloc.dart';
import 'package:silab/features/schedule/data/data_sources/schedule_api_service.dart';
import 'package:silab/features/schedule/data/repository/schedule_repository_impl.dart';
import 'package:silab/features/schedule/domain/repository/schedule_repository.dart';
import 'package:silab/features/schedule/domain/usecases/get_user_schedule_usecase.dart';
import 'package:silab/features/schedule/presentation/bloc/user_schedule_bloc.dart';
import 'package:silab/features/select_subjects/data/data_sources/selected_subject_api_service.dart';
import 'package:silab/features/select_subjects/data/repository/selected_subject_repository_impl.dart';
import 'package:silab/features/select_subjects/domain/repository/selected_subject_repository.dart';
import 'package:silab/features/select_subjects/domain/usecases/add_selected_class_usecase.dart';
import 'package:silab/features/select_subjects/domain/usecases/add_user_selected_subject_usecase.dart';
import 'package:silab/features/select_subjects/domain/usecases/get_user_class_option_by_paid_subject_usecase.dart';
import 'package:silab/features/select_subjects/domain/usecases/get_user_selected_subject_usecase.dart';
import 'package:silab/features/select_subjects/presentation/bloc/add_selected_class/add_selected_class_bloc.dart';
import 'package:silab/features/select_subjects/presentation/bloc/add_selected_subject/add_selected_subject_bloc.dart';
import 'package:silab/features/select_subjects/presentation/bloc/selected_subject_by_nim/selected_subject_by_nim_bloc.dart';
import 'package:silab/features/select_subjects/presentation/bloc/user_class_option_by_paid_subject/user_class_option_by_paid_subject_bloc.dart';
import 'package:silab/features/subjects/data/data_sources/subject_api_service.dart';
import 'package:silab/features/subjects/data/repository/subject_repository_impl.dart';
import 'package:silab/features/subjects/domain/repository/subject_repository.dart';
import 'package:silab/features/subjects/domain/usecases/get_subject_details_usecase.dart';
import 'package:silab/features/subjects/domain/usecases/get_subject_list_usecase.dart';
import 'package:silab/features/subjects/domain/usecases/get_user_selected_subjects_details_usecase.dart';
import 'package:silab/features/subjects/presentation/bloc/subject_details/subject_details_bloc.dart';
import 'package:silab/features/subjects/presentation/bloc/subject_list/subject_list_bloc.dart';
import 'package:silab/features/subjects/presentation/bloc/user_selected_subjects_details/bloc/user_selected_subjects_details_bloc.dart';
import 'package:silab/features/user_details/data/data_sources/user_api_service.dart';
import 'package:silab/features/user_details/data/repositories/user_repository_impl.dart';
import 'package:silab/features/user_details/domain/repositories/user_repository.dart';
import 'package:silab/features/user_details/domain/usecases/get_user_details_usecase.dart';
import 'package:silab/features/user_details/presentation/bloc/user_details_bloc.dart';
import 'package:http/http.dart' as http;

final injector = GetIt.instance;

Future<void> initializeDependencies() async {
  // Http
  injector.registerSingleton<http.Client>(http.Client());

  // Shared Preferences
  injector.registerSingleton<SharedPreferences>(
      await SharedPreferences.getInstance());

  // Data Sources
  injector.registerSingleton<AuthenticationApiService>(
      AuthenticationApiService(client: injector()));
  injector.registerSingleton<AuthenticationLocalDataSource>(
      AuthenticationLocalDataSource(injector()));
  injector.registerSingleton<UserApiService>(UserApiService(injector()));
  injector.registerSingleton<SelectedSubjectApiService>(
      SelectedSubjectApiService(injector()));
  injector.registerSingleton<ClassesApiService>(ClassesApiService(injector()));
  injector.registerSingleton<SubjectApiService>(SubjectApiService(injector()));
  injector.registerSingleton<AnnouncementApiService>(
      AnnouncementApiService(injector()));
  injector
      .registerSingleton<ScheduleApiService>(ScheduleApiService(injector()));

  // Repositories
  injector.registerSingleton<AuthenticationRepository>(
      AuthenticationRepositoryImpl(injector(), injector()));
  injector.registerSingleton<UserRepository>(UserRepositoryImpl(injector()));
  injector.registerSingleton<SelectedSubjectRepository>(
      SelectedSubjectRepositoryImpl(injector()));
  injector.registerSingleton<ClassRepository>(ClassRepositoryImpl(injector()));
  injector
      .registerSingleton<SubjectRepository>(SubjectRepositoryImpl(injector()));
  injector.registerSingleton<AnnouncementRepository>(
      AnnouncementRepositoryImpl(injector()));
  injector.registerSingleton<ScheduleRepository>(
      ScheduleRepositoryImpl(injector()));

  // UseCases
  injector.registerSingleton<UserLoginUsecase>(UserLoginUsecase(injector()));
  injector.registerSingleton<GetUserAccessTokenUsecase>(
      GetUserAccessTokenUsecase(injector()));
  injector.registerSingleton<GetAccessTokenExpiry>(
      GetAccessTokenExpiry(injector()));
  injector.registerSingleton<GetUserDetailsUseCase>(
      GetUserDetailsUseCase(injector()));
  injector.registerSingleton<GetSelectedSubjectByNimUsecase>(
      GetSelectedSubjectByNimUsecase(injector()));
  injector.registerSingleton<GetSubjectDetailsUseCase>(
      GetSubjectDetailsUseCase(injector()));
  injector.registerSingleton<GetSubjectListUseCase>(
      GetSubjectListUseCase(injector()));
  injector.registerSingleton<AddSelectedSubjectUseCase>(
      AddSelectedSubjectUseCase(injector()));
  injector.registerSingleton<GetAllAnnouncementsUseCase>(
      GetAllAnnouncementsUseCase(injector()));
  injector.registerSingleton<GetAnnouncementUseCase>(
      GetAnnouncementUseCase(injector()));
  injector.registerSingleton<GetUserSelectedSubjectsDetailsUseCase>(
      GetUserSelectedSubjectsDetailsUseCase(injector()));
  injector.registerSingleton<AddSelectedClassUseCase>(
      AddSelectedClassUseCase(injector()));
  injector.registerSingleton<GetUserRegisteredClassesUseCase>(
      GetUserRegisteredClassesUseCase(injector()));
  injector.registerSingleton<GetUserClassOptionByPaidSubjectUsecase>(
      GetUserClassOptionByPaidSubjectUsecase(injector()));
  injector.registerSingleton<GetUserMeetingsDataUsecase>(
      GetUserMeetingsDataUsecase(injector()));
  injector.registerSingleton<AddUserAttendancesUsecase>(
      AddUserAttendancesUsecase(injector()));
  injector.registerSingleton<GetUserScheduleUsecase>(
      GetUserScheduleUsecase(injector()));

  // BLoCs
  injector.registerFactory<AuthenticationBloc>(
      () => AuthenticationBloc(injector(), injector(), injector()));
  injector.registerFactory<UserDetailsBloc>(
      () => UserDetailsBloc(injector(), injector()));
  injector.registerFactory<SelectedSubjectByNimBloc>(
      () => SelectedSubjectByNimBloc(injector()));
  injector.registerFactory<SubjectDetailsBloc>(
      () => SubjectDetailsBloc(injector()));
  injector.registerFactory<SubjectListBloc>(() => SubjectListBloc(injector()));
  injector.registerFactory<AddSelectedSubjectBloc>(
      () => AddSelectedSubjectBloc(injector()));
  injector.registerFactory<GetAnnouncementBloc>(
      () => GetAnnouncementBloc(injector()));
  injector.registerFactory<GetAllAnnouncementsBloc>(
      () => GetAllAnnouncementsBloc(injector()));
  injector.registerFactory<UserSelectedSubjectsDetailsBloc>(
      () => UserSelectedSubjectsDetailsBloc(injector()));
  injector.registerFactory<AddSelectedClassBloc>(
      () => AddSelectedClassBloc(injector()));
  injector.registerFactory<UserRegisteredClassBloc>(
      () => UserRegisteredClassBloc(injector()));
  injector.registerFactory<UserClassOptionByPaidSubjectBloc>(
      () => UserClassOptionByPaidSubjectBloc(injector()));
  injector
      .registerFactory<UserMeetingsBloc>(() => UserMeetingsBloc(injector()));
  injector.registerFactory<UserAttendancesBloc>(
      () => UserAttendancesBloc(injector()));
  injector
      .registerFactory<UserScheduleBloc>(() => UserScheduleBloc(injector()));
}
