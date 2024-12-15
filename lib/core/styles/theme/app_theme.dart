import 'package:flutter/material.dart';
import 'package:store/core/styles/theme/color_extension.dart';
import 'package:store/core/styles/theme/image_extension.dart';

ThemeData dartTheme() {
  return ThemeData(
      scaffoldBackgroundColor: Colors.black,
      useMaterial3: true,
      extensions: const <ThemeExtension<dynamic>>[
        MyColorExtention.dark,
        MyImageExtention.dark,
      ]);
}

ThemeData lightTheme() {
  return ThemeData(
      scaffoldBackgroundColor: Colors.lightBlue,
      useMaterial3: true,
      extensions: const <ThemeExtension<dynamic>>[
        MyColorExtention.light,
        MyImageExtention.light,
      ]);
}
