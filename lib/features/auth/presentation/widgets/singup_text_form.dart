import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/core/common/widgets/custom_text_field.dart';
import 'package:store/core/extensions/context_extension.dart';
import 'package:store/core/language/lang_keys.dart';
import 'package:store/core/utils/app_regex.dart';

class SignupTextForm extends StatefulWidget {
  const SignupTextForm({super.key});

  @override
  State<SignupTextForm> createState() => _SignupTextFormState();
}

class _SignupTextFormState extends State<SignupTextForm> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CustomTextField(
            controller: fullNameController,
            hintText: context.translate(LangKeys.fullName),
            validator: (value) {
              if (value!.isEmpty) {
                return context.translate(LangKeys.validEmail);
              }
              return null;
            },
            keyboardType: TextInputType.name,
          ),
          SizedBox(
            height: 24.h,
          ),
          CustomTextField(
            controller: emailController,
            hintText: context.translate(LangKeys.email),
            validator: (value) {
              if (!AppRegex.isEmailValid(value!)) {
                return context.translate(LangKeys.validEmail);
              }
              return null;
            },
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(
            height: 24.h,
          ),
          CustomTextField(
            controller: passwordController,
            obscureText: showPassword,
            hintText: context.translate(LangKeys.password),
            validator: (value) {
              if (!AppRegex.isPasswordValid(value!)) {
                return context.translate(LangKeys.validPasswrod);
              }
              return null;
            },
            suffixIcon: InkWell(
              onTap: () => setState(() => showPassword = !showPassword),
              child: Icon(
                showPassword ? Icons.visibility_off : Icons.visibility,
                color: context.color.textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
