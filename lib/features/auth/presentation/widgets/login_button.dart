import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/core/common/widgets/custom_linear_button.dart';
import 'package:store/core/common/widgets/text_app.dart';
import 'package:store/core/extensions/context_extension.dart';
import 'package:store/core/language/lang_keys.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomLinearButton(
      height: 50.h,
      width: MediaQuery.of(context).size.width,
      onPressed: () {},
      child: TextApp(
        text: context.translate(LangKeys.login),
        theme: context.textStyle.copyWith(
          color: Colors.white,
          fontSize: 16.sp,
        ),
      ),
    );
  }
}
