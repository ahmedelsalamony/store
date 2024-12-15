import 'package:flutter/material.dart';
import 'package:store/core/styles/colors/colors_dark.dart';
import 'package:store/core/styles/colors/colors_light.dart';
import 'package:store/core/styles/images/app_images.dart';

class MyImageExtention extends ThemeExtension<MyImageExtention> {
  final String mainImg;

  const MyImageExtention({
    required this.mainImg,
  });

  @override
  ThemeExtension<MyImageExtention> copyWith({Color? mainColor}) {
    return MyImageExtention(
      mainImg: mainImg,
    );
  }

  @override
  ThemeExtension<MyImageExtention> lerp(
      covariant ThemeExtension<MyImageExtention>? other, double t) {
    if (other is! MyImageExtention) {
      return this;
    }
    return MyImageExtention(
      mainImg: mainImg,
    );
  }

  static const light = MyImageExtention(mainImg: AppImages.lightImg);
  static const dark = MyImageExtention(mainImg: AppImages.darkImg);
}
