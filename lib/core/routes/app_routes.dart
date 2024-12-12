import 'package:flutter/material.dart';

class AppRoutes {
  static const String home = "/";
  static const String firstScreen = "/FirstScreen";
  static const String secondScreen = "/SecondScreen";

  static Route<void> generateRoute(RouteSettings settings) {
    // If args is passed in, cast and use it.
    // final args = settings.arguments as ScreenArguments;

    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (_) => const FirstScreen());
      case firstScreen:
        return MaterialPageRoute(builder: (_) => const FirstScreen());
      case secondScreen:
        return MaterialPageRoute(builder: (_) => const SecondScreen());
      default:
        return MaterialPageRoute(builder: (_) => const FirstScreen());
    }
  }
}
