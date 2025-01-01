import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/core/common/widgets/animate_do.dart';
import 'package:store/core/common/widgets/text_app.dart';
import 'package:store/core/extensions/context_extension.dart';
import 'package:store/core/language/lang_keys.dart';
import 'package:store/core/routes/app_routes.dart';
import 'package:store/core/styles/fonts/font_family_weight.dart';
import 'package:store/core/utils/image_pick_utils.dart';
import 'package:store/features/auth/presentation/widgets/signup_button.dart';
import 'package:store/features/auth/presentation/widgets/singup_text_form.dart';
import 'package:store/features/auth/presentation/widgets/theme_and_lang.dart';
import 'package:store/features/auth/presentation/widgets/user_avatar.dart';
import 'package:store/features/auth/presentation/widgets/welcome_text.dart';

class SignupBody extends StatelessWidget {
  const SignupBody({super.key});

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
              title: LangKeys.signUp,
              description: LangKeys.signUpWelcome,
            ),
            SizedBox(
              height: 24.h,
            ),
            const UserAvatar(),
            SizedBox(
              height: 24.h,
            ),
            const SignupTextForm(),
            SizedBox(
              height: 24.h,
            ),
            const SignupButton(),
            SizedBox(
              height: 24.h,
            ),
            CustomFadeInUp(
              duration: 400,
              child: InkWell(
                onTap: () => context.pushNamed(AppRoutes.home),
                child: TextApp(
                    text: context.translate(LangKeys.login),
                    theme: context.textStyle.copyWith(
                        color: context.color.bluePinkLight,
                        fontWeight: FontFamilyWeight.bold,
                        fontSize: 16.sp)),
              ),
            ),
            SizedBox(
              height: 12.h,
            )
          ],
        )),
      ),
    );
  }
}
