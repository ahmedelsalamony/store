import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/core/app/app_cubit/app_cubit.dart';
import 'package:store/core/app/connectivity_controller.dart';
import 'package:store/core/di/injection_container.dart';
import 'package:store/core/language/app_localizations.dart';
import 'package:store/core/language/app_localizations_setup.dart';
import 'package:store/core/routes/app_routes.dart';
import 'package:store/core/service/shared_prefs/prefs_keys.dart';
import 'package:store/core/service/shared_prefs/shared_pref.dart';
import 'package:store/core/styles/theme/app_theme.dart';

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.instance.isOnline,
      builder: (context, value, child) {
        if (value) {
          return GestureDetector(
            onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
            child: BlocProvider(
              create: (context) => sl.get<AppCubit>()
                ..changeThemeMode(
                    modeFromShared: SharedPref.sharedPreferences
                        .getBool(PrefsKeys.themeMode))
                ..getSavedLanguage(),
              child: ScreenUtilInit(
                designSize: const Size(360, 690),
                minTextAdapt: true,
                child: BlocBuilder<AppCubit, AppState>(
                  buildWhen: (previous, current) {
                    return previous != current;
                  },
                  builder: (context, state) {
                    final cubit = context.read<AppCubit>();
                    return MaterialApp(
                      title: 'Flutter Demo',
                      theme: cubit.isDark ? darkTheme() : lightTheme(),
                      locale: cubit.getSavedLanguage(),
                      localizationsDelegates:
                          AppLocalizationsSetup.localizationsDelegates,
                      localeResolutionCallback:
                          AppLocalizationsSetup.localeResolutionCallback,
                      supportedLocales: AppLocalizationsSetup.supportedLocales,
                      onGenerateRoute: AppRoutes.generateRoute,
                      initialRoute: AppRoutes.firstScreen,
                      builder: (context, child) {
                        return Scaffold(
                          body: Builder(builder: (context) {
                            ConnectivityController.instance.init();
                            return child!;
                          }),
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          );
        } else {
          return const MaterialApp(
              home: Scaffold(body: Center(child: Text("No Internet"))));
        }
      },
    );
  }
}
