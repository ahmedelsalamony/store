// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:store/core/common/widgets/custom_dialogs.dart';
import 'package:store/core/common/widgets/text_app.dart';
import 'package:store/core/extensions/context_extension.dart';
import 'package:store/core/routes/app_routes.dart';
import 'package:store/core/service/shared_prefs/prefs_keys.dart';
import 'package:store/core/service/shared_prefs/shared_pref.dart';
import 'package:store/core/styles/fonts/font_family_helper.dart';
import 'package:store/core/styles/fonts/font_family_weight.dart';
import 'package:store/features/admin/add_categories/presentation/add_categories_screen.dart';
import 'package:store/features/admin/add_notifications/presentation/add_notifications_screen.dart';
import 'package:store/features/admin/add_products/presentation/add_products_screen.dart';
import 'package:store/features/admin/dashboard/presentation/dashboard_screen.dart';
import 'package:store/features/admin/users/presentation/add_user_screen.dart';

class AdminDrawerListModel {
  final Widget title;
  final Icon icon;
  final Widget page;
  AdminDrawerListModel({
    required this.title,
    required this.icon,
    required this.page,
  });
}

List<AdminDrawerListModel> adminDrawerList(BuildContext context) {
  return <AdminDrawerListModel>[
    AdminDrawerListModel(
      title: InkWell(
        onTap: () {
          context.pushNamed(AppRoutes.dashboardScreen);
          ZoomDrawer.of(context)!.toggle();
        },
        child: TextApp(
            text: 'dashboard',
            theme: context.textStyle.copyWith(
              color: Colors.white,
              fontFamily: FontFamilyHelper.getLocalizedFontFamily(),
              fontWeight: FontFamilyWeight.bold,
              fontSize: 18.sp,
            )),
      ),
      icon: const Icon(
        Icons.dashboard,
        color: Colors.white,
      ),
      page: const DashboardScreen(),
    ),
    AdminDrawerListModel(
      title: TextApp(
          text: 'categories',
          theme: context.textStyle.copyWith(
            color: Colors.white,
            fontFamily: FontFamilyHelper.getLocalizedFontFamily(),
            fontWeight: FontFamilyWeight.bold,
            fontSize: 18.sp,
          )),
      icon: const Icon(
        Icons.category,
        color: Colors.white,
      ),
      page: const AddCtegoriesScreen(),
    ),
    AdminDrawerListModel(
      title: TextApp(
          text: 'products',
          theme: context.textStyle.copyWith(
            color: Colors.white,
            fontFamily: FontFamilyHelper.getLocalizedFontFamily(),
            fontWeight: FontFamilyWeight.bold,
            fontSize: 18.sp,
          )),
      icon: const Icon(
        Icons.production_quantity_limits_sharp,
        color: Colors.white,
      ),
      page: const AddProductsScreen(),
    ),
    AdminDrawerListModel(
      title: TextApp(
          text: 'users',
          theme: context.textStyle.copyWith(
            color: Colors.white,
            fontFamily: FontFamilyHelper.getLocalizedFontFamily(),
            fontWeight: FontFamilyWeight.bold,
            fontSize: 18.sp,
          )),
      icon: const Icon(
        Icons.person,
        color: Colors.white,
      ),
      page: const AddUserScreen(),
    ),
    AdminDrawerListModel(
      title: InkWell(
        onTap: () => context.pushNamed(AppRoutes.addNotificationsScreen),
        child: TextApp(
            text: 'notifications',
            theme: context.textStyle.copyWith(
              color: Colors.white,
              fontFamily: FontFamilyHelper.getLocalizedFontFamily(),
              fontWeight: FontFamilyWeight.bold,
              fontSize: 18.sp,
            )),
      ),
      icon: const Icon(
        Icons.notification_add,
        color: Colors.white,
      ),
      page: const AddNotificationsScreen(),
    ),
    AdminDrawerListModel(
      title: InkWell(
        onTap: () {
          CustomDialog.twoButtonDialog(
            context: context,
            textBody: 'logout',
            textButton1: 'yes',
            textButton2: 'no',
            isLoading: false,
            onPressed: () async {
              await SharedPref.sharedPreferences.remove(PrefsKeys.accessToken);
              await SharedPref.sharedPreferences.remove(PrefsKeys.userRole);
              if (context.mounted) {
                context.pushNamedAndRemoveUntil(
                  AppRoutes.loginScreen,
                );
              }
            },
          );
        },
        child: TextApp(
            text: 'logout',
            theme: context.textStyle.copyWith(
              color: Colors.white,
              fontFamily: FontFamilyHelper.getLocalizedFontFamily(),
              fontWeight: FontFamilyWeight.bold,
              fontSize: 18.sp,
            )),
      ),
      icon: const Icon(
        Icons.logout,
        color: Colors.white,
      ),
      page: const AddUserScreen(),
    ),
  ];
}
