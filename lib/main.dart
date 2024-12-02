import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:store/store_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
              apiKey: "AIzaSyBw50gUYWvwBCBvXZHLtzHTdmV3VC-5NN8",
              appId: "1:588319789466:android:fab608c46810d670732a23",
              messagingSenderId: "588319789466",
              projectId: "store-18a85"))
      : await Firebase.initializeApp();
  runApp(const StoreApp());
}
