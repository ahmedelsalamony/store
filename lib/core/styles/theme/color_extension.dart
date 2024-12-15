import 'package:flutter/material.dart';
import 'package:store/core/styles/colors/colors_dark.dart';
import 'package:store/core/styles/colors/colors_light.dart';

class MyColorExtention extends ThemeExtension<MyColorExtention> {
  final Color mainColor;

  const MyColorExtention({
    required this.mainColor,
  });

  @override
  ThemeExtension<MyColorExtention> copyWith({Color? mainColor}) {
    return MyColorExtention(
      mainColor: mainColor ?? this.mainColor,
    );
  }

  @override
  ThemeExtension<MyColorExtention> lerp(
      covariant ThemeExtension<MyColorExtention>? other, double t) {
    if (other is! MyColorExtention) {
      return this;
    }
    return MyColorExtention(
      mainColor: mainColor,
    );
  }

  static const light = MyColorExtention(mainColor: ColorsLight.mainColor);
  static const dark = MyColorExtention(mainColor: ColorsDark.mainColor);
}
