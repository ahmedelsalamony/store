import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/core/common/widgets/custom_text_field.dart';
import 'package:store/core/extensions/context_extension.dart';
import 'package:store/core/language/lang_keys.dart';
import 'package:store/core/utils/app_regex.dart';
import 'package:store/features/auth/presentation/bloc/auth_bloc.dart';

class LoginTextForm extends StatefulWidget {
  const LoginTextForm({super.key});

  @override
  State<LoginTextForm> createState() => _LoginTextFormState();
}

class _LoginTextFormState extends State<LoginTextForm> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool showPassword = false;
  late AuthBloc _authBloc;

  @override
  void initState() {
    super.initState();
    _authBloc = context.read<AuthBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _authBloc.formKey,
      child: Column(
        children: [
          CustomTextField(
            controller: _authBloc.emailController,
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
            controller: _authBloc.passwordController,
            obscureText: showPassword,
            hintText: context.translate(LangKeys.password),
            validator: (value) {
              if (value != null && value.length < 6) {
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
