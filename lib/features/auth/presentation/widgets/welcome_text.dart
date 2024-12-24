import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/core/common/widgets/animate_do.dart';
import 'package:store/core/common/widgets/text_app.dart';
import 'package:store/core/extensions/context_extension.dart';
import 'package:store/core/styles/fonts/font_family_weight.dart';

class WelcomeText extends StatelessWidget {
  final String title;
  final String description;

  const WelcomeText({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return CustomFadeInDown(
      duration: 500,
      child: Column(children: [
        TextApp(
          text: context.translate(title),
          theme: context.textStyle.copyWith(
            fontSize: 24.sp,
            fontWeight: FontFamilyWeight.bold,
            color: context.color.textColor,
          ),
        ),
        SizedBox(
          height: 12.h,
        ),
        TextApp(
          text: context.translate(description),
          theme: context.textStyle.copyWith(
            fontSize: 12.sp,
            fontWeight: FontFamilyWeight.regular,
            color: context.color.textColor,
          ),
        ),
      ]),
    );
  }
}
