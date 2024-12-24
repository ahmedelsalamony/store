import 'package:flutter/material.dart';
import 'package:store/core/common/widgets/custom_linear_button.dart';
import 'package:store/core/extensions/context_extension.dart';
import 'package:store/features/auth/presentation/widgets/login_body.dart';
import 'package:store/core/utils/auth_custom_painter.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CustomPaint(
          size: Size(
            MediaQuery.of(context).size.width,
            150,
          ),
          painter: AuthCustomPainter(
            gradient: LinearGradient(colors: [
              context.color.bluePinkLight!,
              context.color.bluePinkLight!,
              context.color.bluePinkLight!,
              context.color.bluePinkDark!,
            ]),
          ),
        ),
        body: const LoginBody());
  }
}
