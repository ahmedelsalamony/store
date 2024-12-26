import 'package:flutter/material.dart';
import 'package:store/core/styles/fonts/font_family_helper.dart';
import 'package:store/core/styles/theme/color_extension.dart';
import 'package:store/core/styles/theme/asset_extension.dart';

ThemeData darkTheme() {
  return ThemeData(
      fontFamily: FontFamilyHelper.getLocalizedFontFamily(),
      scaffoldBackgroundColor: Colors.black,
      useMaterial3: true,
      extensions: <ThemeExtension<dynamic>>[
        MyColors.dark,
        MyAssets.dark,
      ]);
}

ThemeData lightTheme() {
  return ThemeData(
      fontFamily: FontFamilyHelper.getLocalizedFontFamily(),
      scaffoldBackgroundColor: Colors.white,
      useMaterial3: true,
      extensions: const <ThemeExtension<dynamic>>[
        MyColors.light,
        MyAssets.light,
      ]);
}
