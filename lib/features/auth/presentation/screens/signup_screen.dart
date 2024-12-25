import 'package:flutter/material.dart';
import 'package:store/core/extensions/context_extension.dart';
import 'package:store/core/utils/auth_custom_painter.dart';
import 'package:store/features/auth/presentation/widgets/singup_body.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
        body: const SignupBody());
  }
}
