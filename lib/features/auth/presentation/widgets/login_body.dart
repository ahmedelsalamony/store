import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/core/common/widgets/text_app.dart';
import 'package:store/core/extensions/context_extension.dart';
import 'package:store/core/language/lang_keys.dart';
import 'package:store/core/styles/fonts/font_family_weight.dart';
import 'package:store/features/auth/presentation/widgets/login_text_form.dart';
import 'package:store/features/auth/presentation/widgets/theme_and_lang.dart';
import 'package:store/features/auth/presentation/widgets/welcome_text.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 12.h,
        ),
        child: SingleChildScrollView(
            child: Column(
          children: [
            const ThemeAndLang(),
            SizedBox(
              height: 24.h,
            ),
            const WelcomeText(
              title: LangKeys.login,
              description: LangKeys.welcome,
            ),
            SizedBox(
              height: 24.h,
            ),
            const LoginTextForm(),
            SizedBox(
              height: 24.h,
            ),
            TextApp(
                text: context.translate(LangKeys.createAccount),
                theme: context.textStyle.copyWith(
                    color: context.color.bluePinkLight,
                    fontWeight: FontFamilyWeight.bold,
                    fontSize: 16.sp)),
            SizedBox(
              height: 12.h,
            )
          ],
        )),
      ),
    );
  }
}
