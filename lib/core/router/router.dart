import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:silab/app_config.dart';
import 'package:silab/features/select_subjects/presentation/pages/daftar_praktikum_page.dart';
import 'package:silab/features/announcement/presentation/pages/pengumumman_page.dart';
import 'package:silab/features/select_subjects/presentation/pages/payment_status_page.dart';
import 'package:silab/features/select_subjects/presentation/pages/pilih_kelas_page.dart';
import 'package:silab/features/select_subjects/presentation/pages/ringkasan_daftar_page.dart';
import 'package:silab/features/authentication/presentation/pages/authentication_page.dart';
import 'package:silab/features/classes/presentation/pages/class_detail_page.dart';
import 'package:silab/features/home/presentation/home_page.dart';
import 'package:silab/features/schedule/presentation/pages/schedule_page.dart';
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
      builder: (context, state) => const AuthenticationPage(),
    ),
    GoRoute(
      path: '/splash',
      name: 'splash',
      parentNavigatorKey: _rootNavigator,
      builder: (context, state) => const SplashScreen(),
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
              routes: [
                GoRoute(
                  path: 'daftar-praktikum',
                  name: 'daftar-praktikum',
                  builder: (context, state) => const DaftarPraktikumPage(),
                ),
                GoRoute(
                  path: 'ringkasan-praktikum',
                  name: 'ringkasan-praktikum',
                  builder: (context, state) => RingkasanDaftarPage(
                    ringkasanDaftarPageExtra:
                        state.extra as RingkasanDaftarPageExtra,
                  ),
                ),
                GoRoute(
                  path: 'payment-status',
                  name: 'payment-status',
                  builder: (context, state) => const PaymentStatusPage(),
                ),
                GoRoute(
                    path: 'pengumuman/:id',
                    name: 'pengumuman',
                    builder: (context, state) {
                      final id = state.pathParameters['id'];
                      return PengumumanPage(
                        id: id,
                        // pengumumanPageExtra: state.extra as PengumumanPageExtra,
                      );
                    }),
                GoRoute(
                  path: 'pilih-kelas',
                  name: 'pilih-kelas',
                  builder: (context, state) => const PilihKelasPage(),
                ),
                GoRoute(
                  path: 'class/:id',
                  name: 'class',
                  builder: (context, state) => ClassDetailPage(
                    classDetailPageExtra: state.extra as ClassDetailPageExtra,
                  ),
                ),
              ],
            )
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _shellNavigatorFind,
          routes: [
            GoRoute(
              path: '/schedule',
              name: 'schedule',
              builder: (context, state) => const SchedulePage(),
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
