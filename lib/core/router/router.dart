import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:silab/app_confid.dart';
import 'package:silab/features/authentication/presentation/pages/authentication_page.dart';
import 'package:silab/features/authentication/presentation/pages/verify_otp_page.dart';
import 'package:silab/features/authentication/presentation/pages/verify_otp_page_extra.dart';
import 'package:silab/features/authentication/presentation/widgets/authentication_form.dart';
import 'package:silab/features/home/presentation/home_page.dart';
import 'package:silab/splash_screen.dart';

final GlobalKey<NavigatorState> _rootNavigator = GlobalKey(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigator =
    GlobalKey(debugLabel: 'shell');

final GoRouter router = GoRouter(
  navigatorKey: _rootNavigator,
  debugLogDiagnostics: AppConfig.shared.flavor == Flavor.dev ? true : false,
  initialLocation: '/splash',
  routes: [
    GoRoute(
      path: '/authentication',
      name: 'authentication',
      parentNavigatorKey: _rootNavigator,
      builder: (context, state) => AuthenticationPage(
        formType: state.extra as FormType,
      ),
    ),
    GoRoute(
      path: '/verify-otp',
      name: 'verify-otp',
      parentNavigatorKey: _rootNavigator,
      builder: (context, state) => VerifyOtpPage(
        verifyOtpPageExtra: state.extra as VerifyOtpPageExtra,
      ),
    ),
    GoRoute(
      path: '/home',
      name: 'home',
      parentNavigatorKey: _rootNavigator,
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/splash',
      name: 'splash',
      parentNavigatorKey: _rootNavigator,
      builder: (context, state) => const SplashScreen(),
    ),
  ],
);
