import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/core/common/show_toast.dart';
import 'package:store/core/common/widgets/custom_linear_button.dart';
import 'package:store/core/common/widgets/text_app.dart';
import 'package:store/core/extensions/context_extension.dart';
import 'package:store/core/language/lang_keys.dart';
import 'package:store/core/routes/app_routes.dart';
import 'package:store/core/service/graphql/api_result.dart';
import 'package:store/features/auth/presentation/bloc/auth_bloc.dart';

class LoginButton extends StatefulWidget {
  const LoginButton({super.key});

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        state.mapOrNull(success: (val) {
          if (val.userRole == 'admin') {
            context.pushNamedAndRemoveUntil(AppRoutes.homeAdmin);
          } else {
            context.pushNamedAndRemoveUntil(AppRoutes.homeCustomer);
          }
        }, failure: (error) {
          ShowToast.showToastErrorTop(
            message: error.errorMessage,
          );
        });
      },
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => CustomLinearButton(
            height: 50.h,
            width: MediaQuery.of(context).size.width,
            onPressed: _validateThenDoLogin,
            child: TextApp(
              text: context.translate(LangKeys.login),
              theme: context.textStyle.copyWith(
                color: Colors.white,
                fontSize: 16.sp,
              ),
            ),
          ),
          loading: () => CustomLinearButton(
            height: 50.h,
            width: MediaQuery.of(context).size.width,
            onPressed: _validateThenDoLogin,
            child: const CircularProgressIndicator(
              color: Colors.white,
            ),
          ),
        );
      },
    );
  }

  void _validateThenDoLogin() {
    if (context.read<AuthBloc>().formKey.currentState!.validate()) {
      context.read<AuthBloc>().add(const AuthEvent.login());
    } else {
      return;
    }
  }
}
