import 'package:flutter/material.dart';
import 'package:store/core/common/widgets/admin_app_bar.dart';
import 'package:store/core/styles/colors/colors_dark.dart';
import 'package:store/features/admin/dashboard/presentation/packages/dashboard_body.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AdminAppBar(
        backgroundColor: ColorsDark.blueDark,
        title: 'Dashboard',
        isMain: true,
      ),
      body: DashboardBody(),
    );
  }
}
