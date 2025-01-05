import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/core/app/upload_image/cubit/cubit/upload_image_cubit.dart';
import 'package:store/core/common/show_toast.dart';
import 'package:store/core/common/widgets/animate_do.dart';
import 'package:store/core/common/widgets/custom_linear_button.dart';
import 'package:store/core/common/widgets/text_app.dart';
import 'package:store/core/extensions/context_extension.dart';
import 'package:store/core/language/lang_keys.dart';
import 'package:store/core/routes/app_routes.dart';
import 'package:store/features/auth/presentation/bloc/auth_bloc.dart';

class SignupButton extends StatefulWidget {
  const SignupButton({super.key});

  @override
  State<SignupButton> createState() => _SignupButtonState();
}

class _SignupButtonState extends State<SignupButton> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        state.mapOrNull(success: (val) {
          ShowToast.showToastSuccessTop(
            message: context.translate(LangKeys.loggedSuccessfully),
          );
          context.pushNamedAndRemoveUntil(AppRoutes.homeCustomer);
        }, failure: (error) {
          ShowToast.showToastErrorTop(
            message: error.errorMessage,
          );
        });
      },
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () {
            return CustomFadeInUp(
              duration: 400,
              child: CustomLinearButton(
                height: 50.h,
                width: MediaQuery.of(context).size.width,
                onPressed: () {
                  _validateThenDosignup();
                },
                child: TextApp(
                  text: context.translate(LangKeys.signUp),
                  theme: context.textStyle.copyWith(
                    color: Colors.white,
                    fontSize: 16.sp,
                  ),
                ),
              ),
            );
          },
          loading: () {
            return CustomLinearButton(
              height: 50.h,
              width: MediaQuery.of(context).size.width,
              onPressed: () {},
              child: const CircularProgressIndicator(
                color: Colors.white,
              ),
            );
          },
        );
      },
    );
  }

  void _validateThenDosignup() {
    final avatarImageUrl = context.read<UploadImageCubit>().getImageUrl;
    if (context.read<AuthBloc>().formKey.currentState!.validate() &&
        avatarImageUrl.isNotEmpty) {
      context.read<AuthBloc>().add(AuthEvent.signup(avatarUrl: avatarImageUrl));
    } else {
      if (avatarImageUrl.isEmpty) {
        ShowToast.showToastErrorTop(
          message: context.translate(LangKeys.uploadImageError),
        );
      }
    }
  }
}
