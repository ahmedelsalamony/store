import 'package:flutter/material.dart';
import 'package:store/core/app/connectivity_controller.dart';

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.instance.isOnline,
      builder: (context, value, child) {
        if (value) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              useMaterial3: true,
            ),
            home: const Scaffold(body: Center(child: Text("FlutterApp"))),
          );
        } else {
          return const Scaffold(body: Center(child: Text("No Internet")));
        }
      },
    );
  }
}
