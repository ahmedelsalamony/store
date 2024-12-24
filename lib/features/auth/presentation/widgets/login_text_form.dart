import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/core/common/widgets/custom_text_field.dart';
import 'package:store/core/extensions/context_extension.dart';
import 'package:store/core/language/lang_keys.dart';
import 'package:store/core/utils/app_regex.dart';

class LoginTextForm extends StatefulWidget {
  const LoginTextForm({super.key});

  @override
  State<LoginTextForm> createState() => _LoginTextFormState();
}

class _LoginTextFormState extends State<LoginTextForm> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool showPassword = false;
  @override
/*************  ✨ Codeium Command ⭐  *************/
  /// Builds the login form widget consisting of email and password fields.
  ///
  /// The form contains:
  /// - An email input field with validation for a valid email format.
  /// - A password input field with validation for a valid password format,
  ///   and a toggle to show or hide the password.
  ///
  /// The email and password fields use `CustomTextField` for input.
  /// The validators ensure that the input matches the required patterns.
  ///
  /// Returns a `Form` widget wrapped in a `Column`.

  /// ****  d9b08710-25e7-4e1e-809d-bf2ef8cd71de  ******
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
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
