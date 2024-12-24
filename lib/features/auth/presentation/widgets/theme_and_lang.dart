import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/core/common/widgets/animate_do.dart';
import 'package:store/core/common/widgets/custom_linear_button.dart';
import 'package:store/core/common/widgets/text_app.dart';
import 'package:store/core/extensions/context_extension.dart';
import 'package:store/core/language/lang_keys.dart';

class ThemeAndLang extends StatelessWidget {
  const ThemeAndLang({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      CustomFadeInLeft(
        duration: 450,
        child: CustomLinearButton(
          onPressed: () {},
          child: const Icon(
            Icons.light_mode_rounded,
            color: Colors.white,
          ),
        ),
      ),
      CustomFadeInRight(
        duration: 450,
        child: CustomLinearButton(
          onPressed: () {},
          child: TextApp(
            text: context.translate(LangKeys.language),
            theme: context.textStyle.copyWith(
              color: Colors.white,
              fontSize: 16.sp,
            ),
          ),
        ),
      ),
    ]);
  }
}
