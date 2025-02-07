import 'package:advanced_docdoc_flutter/features/login/logic/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:advanced_docdoc_flutter/core/routing/routes.dart';
import 'package:advanced_docdoc_flutter/features/login/ui/login_screen.dart';
import 'package:advanced_docdoc_flutter/features/onboarding/onboarding_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/home/ui/home_screen.dart';
import '../../features/sign_up/logic/cubit/sign_up_cubit.dart';
import '../../features/sign_up/ui/sign_up_screen.dart';
import '../di/dependency_injection.dart';

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
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignupCubit>(),
            child: const SignupScreen(),
          ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => HomeScreen());
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
