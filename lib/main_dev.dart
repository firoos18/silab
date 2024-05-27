import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab/app_confid.dart';
import 'package:silab/core/router/router.dart';
import 'package:silab/features/authentication/presentation/bloc/resend_otp/resend_otp_bloc.dart';
import 'package:silab/features/authentication/presentation/bloc/login/login_bloc.dart';
import 'package:silab/features/authentication/presentation/bloc/register/register_bloc.dart';
import 'package:silab/features/authentication/presentation/bloc/resend_reset_password_otp/resend_reset_password_otp_bloc.dart';
import 'package:silab/features/authentication/presentation/bloc/reset_password/reset_password_bloc.dart';
import 'package:silab/features/authentication/presentation/bloc/send_reset_password_otp/send_reset_password_otp_bloc.dart';
import 'package:silab/features/authentication/presentation/bloc/verify_otp/verify_otp_bloc.dart';
import 'package:silab/features/authentication/presentation/bloc/verify_reset_password_otp/verify_reset_password_otp_bloc.dart';
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
      ],
      child: MaterialApp.router(
        routerConfig: router,
      ),
    );
  }
}
