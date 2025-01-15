import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/core/common/widgets/custom_container_linear_admin.dart';
import 'package:store/core/common/widgets/loading_shimmer.dart';
import 'package:store/core/common/widgets/text_app.dart';
import 'package:store/core/extensions/context_extension.dart';
import 'package:store/core/styles/fonts/font_family_helper.dart';
import 'package:store/core/styles/fonts/font_family_weight.dart';

class DashboardContainer extends StatelessWidget {
  final String title;
  final String number;
  final bool isLoading;
  final String image;
  const DashboardContainer(
      {super.key,
      required this.title,
      required this.number,
      required this.isLoading,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return CustomContainerLinearAdmin(
        height: 130.h,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextApp(
                            text: title,
                            theme: context.textStyle.copyWith(
                              color: Colors.white,
                              fontSize: 24.sp,
                              fontWeight: FontFamilyWeight.bold,
                              fontFamily: FontFamilyHelper.poppins,
                            )),
                        SizedBox(
                          height: 12.h,
                        ),
                        isLoading
                            ? const LoadingShimmer(
                                height: 18,
                                width: 100,
                                borderRadius: 10,
                              )
                            : TextApp(
                                text: number,
                                theme: context.textStyle.copyWith(
                                  color: Colors.white,
                                  fontSize: 18.sp,
                                  fontWeight: FontFamilyWeight.bold,
                                  fontFamily: FontFamilyHelper.poppins,
                                ))
                      ]),
                ),
                SizedBox(
                  width: 80.w,
                  height: 80.h,
                  child: Image.asset(
                    image,
                    fit: BoxFit.scaleDown,
                  ),
                )
              ]),
        ));
  }
}
