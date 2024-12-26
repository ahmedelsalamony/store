import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/core/app/app_cubit/app_cubit.dart';
import 'package:store/core/common/widgets/animate_do.dart';
import 'package:store/core/common/widgets/custom_linear_button.dart';
import 'package:store/core/common/widgets/text_app.dart';
import 'package:store/core/extensions/context_extension.dart';
import 'package:store/core/language/lang_keys.dart';

class ThemeAndLang extends StatelessWidget {
  const ThemeAndLang({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AppCubit>();
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      CustomFadeInLeft(
        duration: 450,
        child: BlocBuilder(
          bloc: cubit,
          builder: (context, state) {
            return CustomLinearButton(
              onPressed: () {
                cubit.changeThemeMode();
              },
              child: Icon(
                cubit.isDark
                    ? Icons.dark_mode_rounded
                    : Icons.light_mode_rounded,
                color: Colors.white,
              ),
            );
          },
        ),
      ),
      CustomFadeInRight(
        duration: 450,
        child: CustomLinearButton(
          onPressed: () {
            if (cubit.currentLangCode == 'en') {
              cubit.changeLangToArabic();
            } else {
              cubit.changeLangToEnglish();
            }
            debugPrint(cubit.currentLangCode);
          },
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
