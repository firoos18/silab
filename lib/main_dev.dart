import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:silab/app_confid.dart';
import 'package:silab/core/router/router.dart';
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
import 'package:silab/features/select_subjects/presentation/bloc/selected_subject_by_nim/selected_subject_by_nim_bloc.dart';
import 'package:silab/features/subjects/presentation/bloc/subject_details/subject_details_bloc.dart';
import 'package:silab/features/subjects/presentation/bloc/subject_list/subject_list_bloc.dart';
import 'package:silab/features/user_details/presentation/bloc/user_details_bloc.dart';
import 'package:silab/injector.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();
  runApp(const MainApp());

  AppConfig.create(
    appName: "SILAB Dev",
    baseUrl: "https://silab-dev.vercel.app",
    flavor: Flavor.dev,
  );
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
        ),
        routerConfig: router,
      ),
    );
  }
}
