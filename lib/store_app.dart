import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/core/app/connectivity_controller.dart';
import 'package:store/core/language/app_localizations.dart';
import 'package:store/core/language/app_localizations_setup.dart';
import 'package:store/core/routes/app_routes.dart';
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
            child: ScreenUtilInit(
              designSize: const Size(360, 690),
              minTextAdapt: true,
              child: MaterialApp(
                title: 'Flutter Demo',
                theme: darkTheme(),
                locale: const Locale('en'),
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
