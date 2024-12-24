import 'package:flutter/material.dart';
import 'package:store/core/styles/theme/color_extension.dart';
import 'package:store/core/styles/theme/asset_extension.dart';

ThemeData darkTheme() {
  return ThemeData(
      scaffoldBackgroundColor: Colors.black,
      useMaterial3: true,
      extensions: <ThemeExtension<dynamic>>[
        MyColors.dark,
        MyAssets.dark,
      ]);
}

ThemeData lightTheme() {
  return ThemeData(
      scaffoldBackgroundColor: Colors.lightBlue,
      useMaterial3: true,
      extensions: const <ThemeExtension<dynamic>>[
        MyColors.light,
        MyAssets.light,
      ]);
}
