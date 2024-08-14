import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:silab/app_config.dart';
import 'package:silab/core/router/router.dart';
import 'package:silab/core/services/notification_service.dart';
import 'package:silab/features/announcement/presentation/blocs/get_all_announcements/get_all_announcements_bloc.dart';
import 'package:silab/features/announcement/presentation/blocs/get_announcement/get_announcement_bloc.dart';
import 'package:silab/features/authentication/presentation/bloc/logout/logout_bloc.dart';
import 'package:silab/features/authentication/presentation/bloc/resend_otp/resend_otp_bloc.dart';
import 'package:silab/features/authentication/presentation/bloc/login/login_bloc.dart';
import 'package:silab/features/authentication/presentation/bloc/register/register_bloc.dart';
import 'package:silab/features/authentication/presentation/bloc/resend_reset_password_otp/resend_reset_password_otp_bloc.dart';
import 'package:silab/features/authentication/presentation/bloc/reset_password/reset_password_bloc.dart';
import 'package:silab/features/authentication/presentation/bloc/send_reset_password_otp/send_reset_password_otp_bloc.dart';
import 'package:silab/features/authentication/presentation/bloc/verify_otp/verify_otp_bloc.dart';
import 'package:silab/features/authentication/presentation/bloc/verify_reset_password_otp/verify_reset_password_otp_bloc.dart';
import 'package:silab/features/classes/presentation/bloc/class_by_id/class_by_id_bloc.dart';
import 'package:silab/features/classes/presentation/bloc/class_list/class_list_bloc.dart';
import 'package:silab/features/select_subjects/presentation/bloc/add_selected_subject/add_selected_subject_bloc.dart';
import 'package:silab/features/select_subjects/presentation/bloc/get_payment_status/get_payment_status_bloc.dart';
import 'package:silab/features/select_subjects/presentation/bloc/selected_subject_by_nim/selected_subject_by_nim_bloc.dart';
import 'package:silab/features/subjects/presentation/bloc/subject_details/subject_details_bloc.dart';
import 'package:silab/features/subjects/presentation/bloc/subject_list/subject_list_bloc.dart';
import 'package:silab/features/subjects/presentation/bloc/user_selected_subjects_details/bloc/user_selected_subjects_details_bloc.dart';
import 'package:silab/features/user_details/presentation/bloc/user_details_bloc.dart';
import 'package:silab/firebase_options.dart';
import 'package:silab/injector.dart';

void main() async {
  await dotenv.load(fileName: '.env');

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final notificationService = NotificationService(router);
  await notificationService.initialize();

  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  await initializeDependencies();

  runApp(const MainApp());

  AppConfig.create(
    appName: "SILAB Dev",
    baseUrl: "https://silab-dev.vercel.app",
    flavor: Flavor.dev,
  );
}

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  print('Handling a background message: ${message.messageId}');
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<RegisterBloc>(
          create: (_) => RegisterBloc(injector()),
        ),
        BlocProvider<LoginBloc>(
          create: (_) => LoginBloc(injector(), injector()),
        ),
        BlocProvider<VerifyOtpBloc>(
          create: (_) => VerifyOtpBloc(injector()),
        ),
        BlocProvider<ResendOtpBloc>(
          create: (_) => ResendOtpBloc(injector()),
        ),
        BlocProvider<ResetPasswordBloc>(
          create: (_) => ResetPasswordBloc(injector()),
        ),
        BlocProvider<SendResetPasswordOtpBloc>(
          create: (_) => SendResetPasswordOtpBloc(injector()),
        ),
        BlocProvider<ResendResetPasswordOtpBloc>(
          create: (_) => ResendResetPasswordOtpBloc(injector()),
        ),
        BlocProvider<VerifyResetPasswordOtpBloc>(
          create: (_) => VerifyResetPasswordOtpBloc(injector()),
        ),
        BlocProvider<UserDetailsBloc>(
          create: (_) => UserDetailsBloc(injector(), injector()),
        ),
        BlocProvider<SelectedSubjectByNimBloc>(
          create: (_) => SelectedSubjectByNimBloc(injector(), injector()),
        ),
        BlocProvider<ClassByIdBloc>(
          create: (_) => ClassByIdBloc(injector()),
        ),
        BlocProvider<ClassListBloc>(
          create: (_) => ClassListBloc(injector()),
        ),
        BlocProvider<SubjectDetailsBloc>(
          create: (_) => SubjectDetailsBloc(injector()),
        ),
        BlocProvider<LogoutBloc>(
          create: (_) => LogoutBloc(injector()),
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
        BlocProvider<GetPaymentStatusBloc>(
          create: (_) => GetPaymentStatusBloc(injector()),
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
            color: Color(0xff3272CA),
          ),
          checkboxTheme: const CheckboxThemeData(
            checkColor: MaterialStatePropertyAll(
              Color(0xfff4f4f9),
            ),
          ),
        ),
        routerConfig: router,
      ),
    );
  }
}
