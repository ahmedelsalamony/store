import 'package:flutter/material.dart';
import 'package:store/features/auth/presentation/screens/login_screen.dart';
import 'package:store/features/auth/presentation/screens/signup_screen.dart';
import 'package:store/features/second_screen.dart';

class AppRoutes {
  static const String home = "/";
  static const String firstScreen = "/loginScreen";
  static const String secondScreen = "/SecondScreen";
  static const String signupScreen = "/signupScreen";

  static Route<void> generateRoute(RouteSettings settings) {
    // If args is passed in, cast and use it.
    // final args = settings.arguments as ScreenArguments;

    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case firstScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case signupScreen:
        return MaterialPageRoute(builder: (_) => const SignupScreen());
      default:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
    }
  }
}
