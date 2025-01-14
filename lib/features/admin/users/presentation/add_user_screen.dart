import 'package:flutter/material.dart';
import 'package:store/core/common/widgets/admin_app_bar.dart';
import 'package:store/core/styles/colors/colors_dark.dart';

class AddUserScreen extends StatelessWidget {
  const AddUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AdminAppBar(
        backgroundColor: ColorsDark.blueDark,
        title: 'Users',
        isMain: true,
      ),
      body: Center(
        child: Text('Users'),
      ),
    );
  }
}
