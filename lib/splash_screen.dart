import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silab/core/router/router.dart';
import 'package:silab/features/authentication/presentation/bloc/authentication_bloc.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    context.read<AuthenticationBloc>().add(AppOpened());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) {
        if (state is AuthenticationSuccess) {
          Future.delayed(const Duration(seconds: 2)).then(
            (value) => router.goNamed('home'),
          );
        } else {
          Future.delayed(const Duration(seconds: 2)).then(
            (value) => router.goNamed('authentication'),
          );
        }
      },
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/image/sisinfo-blue.png',
                width: 120,
                height: 120,
              ),
              const SizedBox(height: 16),
              const SizedBox(
                height: 24,
                width: 24,
                child: CircularProgressIndicator.adaptive(
                  strokeWidth: 4,
                  valueColor: AlwaysStoppedAnimation(
                    Color(0xffFFBF01),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
