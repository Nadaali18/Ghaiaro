import 'package:ghaiaro/Presentation/splash/splash_screen_view.dart';
import 'package:ghaiaro/presentation/auth/signup/signup_view.dart';
import 'package:ghaiaro/presentation/onboarding/view/onboarding_view.dart';
import 'package:go_router/go_router.dart';

class Routes {
  static const String splash = '/';
  static const String onboarding = '/onboarding';
  static const String signUp = '/signUp';

  static final routes = GoRouter(
    routes: [
      GoRoute(
        path: splash,
        builder: (context, state) => const SplashScreenView(),
      ),
      GoRoute(
        path: onboarding,
        builder: (context, state) => const OnboardingView(),
      ),
      GoRoute(
        path: signUp,
        builder: (context, state) => const SignupView(),
      ),
     
    ],
  );
}