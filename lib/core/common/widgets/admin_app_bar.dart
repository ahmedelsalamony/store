import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:store/core/common/widgets/text_app.dart';
import 'package:store/core/extensions/context_extension.dart';
import 'package:store/core/styles/fonts/font_family_helper.dart';
import 'package:store/core/styles/fonts/font_family_weight.dart';

class AdminAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color backgroundColor;
  final String title;
  final bool isMain;
  const AdminAppBar({
    super.key,
    required this.backgroundColor,
    required this.title,
    required this.isMain,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      title: TextApp(
        text: title,
        theme: context.textStyle.copyWith(
          color: Colors.white,
          fontSize: 16.sp,
          fontWeight: FontFamilyWeight.bold,
          fontFamily: FontFamilyHelper.poppins,
        ),
      ),
      centerTitle: true,
      automaticallyImplyLeading: isMain ? false : true,
      leading: isMain
          ? IconButton(
              onPressed: () {
                ZoomDrawer.of(context)!.toggle();
              },
              icon: Icon(
                Icons.menu,
                color: Colors.white,
                size: 28.sp,
              ))
          : const SizedBox.shrink(),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
