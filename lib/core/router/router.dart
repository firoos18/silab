import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:silab/app_confid.dart';
import 'package:silab/features/authentication/presentation/pages/authentication_page.dart';
import 'package:silab/features/authentication/presentation/pages/reset_password_page.dart';
import 'package:silab/features/authentication/presentation/pages/send_reset_password_otp_page.dart';
import 'package:silab/features/authentication/presentation/pages/user_info_page.dart';
import 'package:silab/features/authentication/presentation/pages/user_info_page_extra.dart';
import 'package:silab/features/authentication/presentation/pages/verify_otp_page.dart';
import 'package:silab/features/authentication/presentation/pages/verify_otp_page_extra.dart';
import 'package:silab/features/authentication/presentation/pages/verify_reset_password_otp_page.dart';
import 'package:silab/features/authentication/presentation/pages/verify_reset_password_otp_page_extra.dart';
import 'package:silab/features/authentication/presentation/widgets/authentication_form.dart';
import 'package:silab/features/classes/presentation/pages/class_detail_page.dart';
import 'package:silab/features/home/presentation/home_page.dart';
import 'package:silab/features/subjects/presentation/pages/subject_detail_page.dart';
import 'package:silab/features/subjects/presentation/pages/subject_detail_page_extras.dart';
import 'package:silab/features/user_details/presentation/pages/profile_page.dart';
import 'package:silab/features/user_details/presentation/pages/user_detail_page.dart';
import 'package:silab/scaffold_page.dart';
import 'package:silab/splash_screen.dart';

final GlobalKey<NavigatorState> _rootNavigator = GlobalKey(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorHome =
    GlobalKey(debugLabel: 'shell');
final GlobalKey<NavigatorState> _shellNavigatorProfile =
    GlobalKey(debugLabel: 'shell');
final GlobalKey<NavigatorState> _shellNavigatorFind =
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
      path: '/user-info',
      name: 'user-info',
      builder: (context, state) => UserInfoPage(
        userInfoPageExtra: state.extra as UserInfoPageExtra,
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
      path: '/send-reset-password-otp',
      name: 'send-reset-password-otp',
      parentNavigatorKey: _rootNavigator,
      builder: (context, state) => const SendResetPasswordOtpPage(),
    ),
    GoRoute(
      path: '/verify-reset-password-otp',
      name: 'verify-reset-password-otp',
      parentNavigatorKey: _rootNavigator,
      builder: (context, state) => VerifyResetPasswordOtpPage(
        verifyResetPasswordOtpPageExtra:
            state.extra as VerifyResetPasswordOtpPageExtra,
      ),
    ),
    GoRoute(
      path: '/reset-password',
      name: 'reset-password',
      parentNavigatorKey: _rootNavigator,
      builder: (context, state) =>
          ResetPasswordPage(userId: state.extra as String),
    ),
    GoRoute(
      path: '/splash',
      name: 'splash',
      parentNavigatorKey: _rootNavigator,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: '/subject-detail/:id',
      name: 'subject-detail',
      builder: (context, state) => SubjectDetailPage(
        subjectDetailPageExtras: state.extra as SubjectDetailPageExtras,
        id: state.pathParameters['id']!,
      ),
    ),
    GoRoute(
      path: '/class/:id',
      name: 'class',
      builder: (context, state) => ClassDetailPage(
        classId: state.pathParameters['id'],
      ),
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) =>
          ScaffoldPage(navigationShell: navigationShell),
      branches: <StatefulShellBranch>[
        StatefulShellBranch(
          navigatorKey: _shellNavigatorHome,
          routes: [
            GoRoute(
              path: '/home',
              name: 'home',
              builder: (context, state) => const HomePage(),
            )
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _shellNavigatorFind,
          routes: [
            GoRoute(
              path: '/find',
              name: 'find',
              builder: (context, state) => const HomePage(),
            )
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _shellNavigatorProfile,
          routes: [
            GoRoute(
              path: '/profile',
              name: 'profile',
              builder: (context, state) => const ProfilePage(),
              routes: [
                GoRoute(
                  path: 'user-detail',
                  name: 'user-detail',
                  parentNavigatorKey: _rootNavigator,
                  builder: (context, state) => const UserDetailPage(),
                ),
              ],
            )
          ],
        )
      ],
    ),
  ],
);
