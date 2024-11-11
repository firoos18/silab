import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:silab/app_config.dart';
import 'package:silab/core/router/router.dart';
import 'package:silab/features/announcement/presentation/blocs/get_all_announcements/get_all_announcements_bloc.dart';
import 'package:silab/features/announcement/presentation/blocs/get_announcement/get_announcement_bloc.dart';
import 'package:silab/features/authentication/presentation/bloc/authentication_bloc.dart';
import 'package:silab/features/classes/presentation/bloc/user_attendances/user_attendances_bloc.dart';
import 'package:silab/features/classes/presentation/bloc/user_meetings/user_meetings_bloc.dart';
import 'package:silab/features/classes/presentation/bloc/user_registered_class/user_registered_class_bloc.dart';
import 'package:silab/features/schedule/presentation/bloc/user_schedule_bloc.dart';
import 'package:silab/features/select_subjects/presentation/bloc/add_selected_class/add_selected_class_bloc.dart';
import 'package:silab/features/select_subjects/presentation/bloc/add_selected_subject/add_selected_subject_bloc.dart';
import 'package:silab/features/select_subjects/presentation/bloc/selected_subject_by_nim/selected_subject_by_nim_bloc.dart';
import 'package:silab/features/select_subjects/presentation/bloc/user_class_option_by_paid_subject/user_class_option_by_paid_subject_bloc.dart';
import 'package:silab/features/subjects/presentation/bloc/subject_details/subject_details_bloc.dart';
import 'package:silab/features/subjects/presentation/bloc/subject_list/subject_list_bloc.dart';
import 'package:silab/features/subjects/presentation/bloc/user_selected_subjects_details/bloc/user_selected_subjects_details_bloc.dart';
import 'package:silab/features/user_details/presentation/bloc/user_details_bloc.dart';
import 'package:silab/injector.dart';
import 'package:url_strategy/url_strategy.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();
  setPathUrlStrategy();

  runApp(const MainApp());

  AppConfig.create(
    appName: "SILAB Dev",
    baseUrl: "http://10.4.52.201:3001",
    flavor: Flavor.dev,
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthenticationBloc>(
          create: (_) => AuthenticationBloc(injector(), injector(), injector()),
        ),
        BlocProvider<UserDetailsBloc>(
          create: (_) => UserDetailsBloc(injector(), injector()),
        ),
        BlocProvider<SelectedSubjectByNimBloc>(
          create: (_) => SelectedSubjectByNimBloc(injector()),
        ),
        BlocProvider<SubjectDetailsBloc>(
          create: (_) => SubjectDetailsBloc(injector()),
        ),
        BlocProvider<SubjectListBloc>(
          create: (_) => SubjectListBloc(injector()),
        ),
        BlocProvider<AddSelectedSubjectBloc>(
          create: (_) => AddSelectedSubjectBloc(injector()),
        ),
        BlocProvider<GetAllAnnouncementsBloc>(
          create: (_) => GetAllAnnouncementsBloc(injector()),
        ),
        BlocProvider<GetAnnouncementBloc>(
          create: (_) => GetAnnouncementBloc(injector()),
        ),
        BlocProvider<UserSelectedSubjectsDetailsBloc>(
          create: (_) => UserSelectedSubjectsDetailsBloc(injector()),
        ),
        BlocProvider<AddSelectedClassBloc>(
          create: (_) => AddSelectedClassBloc(injector()),
        ),
        BlocProvider<UserRegisteredClassBloc>(
          create: (_) => UserRegisteredClassBloc(injector()),
        ),
        BlocProvider<UserClassOptionByPaidSubjectBloc>(
          create: (_) => UserClassOptionByPaidSubjectBloc(injector()),
        ),
        BlocProvider<UserMeetingsBloc>(
          create: (_) => UserMeetingsBloc(injector()),
        ),
        BlocProvider<UserAttendancesBloc>(
          create: (_) => UserAttendancesBloc(injector()),
        ),
        BlocProvider<UserScheduleBloc>(
          create: (_) => UserScheduleBloc(injector()),
        ),
      ],
      child: MaterialApp.router(
        theme: ThemeData(
          textTheme: GoogleFonts.manropeTextTheme().apply(
            bodyColor: const Color(0xff1d1d1d),
          ),
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            titleTextStyle: TextStyle(
              color: Color(0xff1d1d1d),
            ),
          ),
          canvasColor: const Color(0xfff4f4f9),
          progressIndicatorTheme: const ProgressIndicatorThemeData(
            color: Color(0xffFFBF01),
          ),
          checkboxTheme: const CheckboxThemeData(
            checkColor: WidgetStatePropertyAll(
              Color(0xfff4f4f9),
            ),
          ),
          radioTheme: const RadioThemeData(
              fillColor: WidgetStatePropertyAll(Color(0xff3272CA))),
          dialogBackgroundColor: Colors.white,
        ),
        routerConfig: router,
      ),
    );
  }
}
