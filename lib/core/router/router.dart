import 'package:go_router/go_router.dart';
import 'package:silab/app_confid.dart';
import 'package:silab/features/authentication/presentation/pages/authentication_page.dart';

final GoRouter router = GoRouter(
  debugLogDiagnostics: AppConfig.shared.flavor == Flavor.dev ? true : false,
  initialLocation: '/authentication',
  routes: [
    GoRoute(
      path: '/authentication',
      name: 'authentication',
      builder: (context, state) => const AuthenticationPage(),
    ),
  ],
);
