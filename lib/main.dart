import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:store/core/app/connectivity_controller.dart';
import 'package:store/env.variables.dart';
import 'package:store/store_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  ConnectivityController.instance.init();
  await EnvVarialbe.instance.init(envType: EnvTypeEnum.development);
  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
              apiKey: "AIzaSyBw50gUYWvwBCBvXZHLtzHTdmV3VC-5NN8",
              appId: "1:588319789466:android:fab608c46810d670732a23",
              messagingSenderId: "588319789466",
              projectId: "store-18a85"))
      : await Firebase.initializeApp(
          options: const FirebaseOptions(
              apiKey: "AIzaSyAI79Gy6jiHdMEmcYoc3-d_EcYXYtYHlAI",
              appId: "1:588319789466:ios:14939206c135cce9732a23",
              messagingSenderId: "588319789466",
              projectId: "store-18a85"),
        );
  await SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  ).then((value) => runApp(const StoreApp()));
}
