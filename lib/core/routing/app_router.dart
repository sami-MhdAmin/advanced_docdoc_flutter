import 'package:flutter/material.dart';
import 'package:advanced_docdoc_flutter/core/routing/routes.dart';
import 'package:advanced_docdoc_flutter/features/login/ui/login_screen.dart';
import 'package:advanced_docdoc_flutter/features/onboarding/onboarding_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    //this arugments to be passed in any screen like this { arguments as ClassName }
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text("No route defined for ${settings.name}"),
            ),
          ),
        );
    }
  }
}
