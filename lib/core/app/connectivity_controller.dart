import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class ConnectivityController {
  ConnectivityController._();

  static final ConnectivityController instance = ConnectivityController._();

  ValueNotifier<bool> isOnline = ValueNotifier(true);

  Future<void> init() async {
    final List<ConnectivityResult> connectivityResult =
        await (Connectivity().checkConnectivity());
    isInternetConnected(connectivityResult);
    Connectivity()
        .onConnectivityChanged
        .listen((List<ConnectivityResult> result) {
      isInternetConnected(result);
    });
  }

  bool isInternetConnected(List<ConnectivityResult> result) {
    if (result.contains(ConnectivityResult.mobile)) {
      // Mobile network available.
      return true;
    } else if (result.contains(ConnectivityResult.wifi)) {
      // Wi-fi is available.
      // Note for Android:
      // When both mobile and Wi-Fi are turned on system will return Wi-Fi only as active network type
      return true;
    } else if (result.contains(ConnectivityResult.none)) {
      // No available network types
      return false;
    }
    return false;
  }
}
