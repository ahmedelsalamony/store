import 'package:flutter/material.dart';
import 'package:store/core/common/widgets/admin_app_bar.dart';
import 'package:store/core/styles/colors/colors_dark.dart';

class AddProductsScreen extends StatelessWidget {
  const AddProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AdminAppBar(
        backgroundColor: ColorsDark.blueDark,
        title: 'AddProductsScreen',
        isMain: true,
      ),
      body: Center(
        child: Text('AddProductsScreen'),
      ),
    );
  }
}
