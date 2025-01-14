import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:store/core/common/widgets/admin_app_bar.dart';
import 'package:store/core/extensions/context_extension.dart';
import 'package:store/core/styles/colors/colors_dark.dart';
import 'package:store/core/styles/images/app_images.dart';
import 'package:store/core/utils/admin_drawer_list.dart';
import 'package:store/features/admin/dashboard/presentation/dashboard_screen.dart';
import 'package:store/features/auth/presentation/screens/login_screen.dart';

class HomeAdmin extends StatefulWidget {
  const HomeAdmin({super.key});

  @override
  State<HomeAdmin> createState() => _HomeAdminState();
}

class _HomeAdminState extends State<HomeAdmin> {
  Widget page = const DashboardScreen();

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      controller: ZoomDrawerController(),
      menuScreen: MenuAdminScreen(
        onPageChanged: (a) {
          ZoomDrawer.of(context)!.close();
          setState(() {
            page = a;
          });
        },
      ),
      mainScreen: page,
      borderRadius: 24.0,
      showShadow: true,
      angle: -12.0,
      drawerShadowsBackgroundColor: ColorsDark.mainColor.withOpacity(0.6),
      menuBackgroundColor: ColorsDark.blueDark,
      slideWidth: MediaQuery.of(context).size.width * 0.65,
    );
  }
}

class MenuAdminScreen extends StatelessWidget {
  const MenuAdminScreen({super.key, required this.onPageChanged});

  final void Function(Widget) onPageChanged;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorsDark.blueDark,
        appBar: const AdminAppBar(
          backgroundColor: ColorsDark.blueDark,
          title: 'Admin',
          isMain: true,
        ),
        body: Column(children: [
          SizedBox(
            height: 16.h,
          ),
          ...adminDrawerList(context).map((e) => ListTile(
                title: e.title,
                leading: e.icon,
                onTap: () {
                  onPageChanged(e.page);
                },
              )),
          Expanded(
              child: Image.asset(
            AppImages.drawerImage,
            fit: BoxFit.scaleDown,
          ))
        ]));
  }
}
