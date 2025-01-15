import 'package:flutter/material.dart';
import 'package:store/core/styles/images/app_images.dart';
import 'package:store/features/admin/dashboard/presentation/packages/dashboard_container.dart';

class DashboardBody extends StatelessWidget {
  const DashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        DashboardContainer(
            title: "products",
            number: "10",
            isLoading: false,
            image: AppImages.productsDrawer),
        SizedBox(
          height: 16,
        ),
        DashboardContainer(
            title: "Categories",
            number: "10",
            isLoading: true,
            image: AppImages.categoriesDrawer),
        SizedBox(
          height: 16,
        ),
        DashboardContainer(
            title: "Users",
            number: "10",
            isLoading: false,
            image: AppImages.usersDrawer),
        SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
