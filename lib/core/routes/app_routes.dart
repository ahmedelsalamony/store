import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store/core/app/upload_image/cubit/cubit/upload_image_cubit.dart';
import 'package:store/core/di/injection_container.dart';
import 'package:store/features/admin/add_notifications/presentation/add_notifications_screen.dart';
import 'package:store/features/admin/dashboard/presentation/dashboard_screen.dart';
import 'package:store/features/admin/home_admin/screens/home_admin.dart';
import 'package:store/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:store/features/auth/presentation/screens/login_screen.dart';
import 'package:store/features/auth/presentation/screens/signup_screen.dart';
import 'package:store/features/customer/presentation/screens/home_customer.dart';

class AppRoutes {
  static const String home = "/";
  static const String loginScreen = "/loginScreen";
  static const String signupScreen = "/signupScreen";
  static const String homeAdmin = "/homeAdmin";
  static const String homeCustomer = "/homeCustomer";
  static const String addNotificationsScreen = "/addNotificationsScreen";
  static const String dashboardScreen = "/dashboardScreen";

  static Route<void> generateRoute(RouteSettings settings) {
    // If args is passed in, cast and use it.
    // final args = settings.arguments as ScreenArguments;

    switch (settings.name) {
      case home:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => sl<AuthBloc>(),
                  child: const LoginScreen(),
                ));
      case loginScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => sl<AuthBloc>(),
                  child: const LoginScreen(),
                ));
      case signupScreen:
        return MaterialPageRoute(
            builder: (_) => MultiBlocProvider(providers: [
                  BlocProvider(create: (context) => sl<UploadImageCubit>()),
                  BlocProvider(create: (context) => sl<AuthBloc>())
                ], child: const SignupScreen()));
      case homeAdmin:
        return MaterialPageRoute(builder: (_) => const HomeAdmin());
      case homeCustomer:
        return MaterialPageRoute(builder: (_) => const HomeCustomer());
      case addNotificationsScreen:
        return MaterialPageRoute(
            builder: (_) => const AddNotificationsScreen());
      case dashboardScreen:
        return MaterialPageRoute(builder: (_) => const DashboardScreen());
      default:
        return MaterialPageRoute(builder: (_) => const HomeCustomer());
    }
  }
}
