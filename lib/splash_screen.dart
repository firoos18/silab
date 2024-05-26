import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab/core/router/router.dart';
import 'package:silab/features/authentication/presentation/bloc/login/login_bloc.dart';
import 'package:silab/features/authentication/presentation/widgets/authentication_form.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    context.read<LoginBloc>().add(ApplicationStarted());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          Future.delayed(const Duration(seconds: 2)).then(
            (value) => router.goNamed('home'),
          );
        } else if (state is LoginInitial) {
          Future.delayed(const Duration(seconds: 3)).then(
            (value) =>
                router.goNamed('authentication', extra: FormType.register),
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: Center(
            child: Image.asset(
              'assets/image/sisinfo-blue.png',
              width: 120,
              height: 120,
            ),
          ),
        );
      },
    );
  }
}
