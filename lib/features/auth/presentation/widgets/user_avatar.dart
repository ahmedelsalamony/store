import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store/core/app/upload_image/cubit/cubit/upload_image_cubit.dart';
import 'package:store/core/common/show_toast.dart';
import 'package:store/core/extensions/context_extension.dart';
import 'package:store/core/language/lang_keys.dart';
import 'package:store/core/routes/app_routes.dart';
import 'package:store/core/service/shared_prefs/prefs_keys.dart';
import 'package:store/core/styles/images/app_images.dart';
import 'package:store/core/utils/image_pick_utils.dart';

class UserAvatar extends StatefulWidget {
  const UserAvatar({
    super.key,
  });

  @override
  State<UserAvatar> createState() => _UserAvatarState();
}

class _UserAvatarState extends State<UserAvatar> {
  bool isImageUploaded = false;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UploadImageCubit, UploadImageState>(
      listener: (context, state) {
        state.mapOrNull(
          success: (val) {
            ShowToast.showToastSuccessTop(
              message: context.translate(LangKeys.imageUploaded),
            );
          },
          failure: (error) {
            ShowToast.showToastErrorTop(
              message: context.translate(LangKeys.uploadImageError),
            );
          },
          remove: (value) {
            ShowToast.showToastSuccessTop(
              message: context.translate(LangKeys.imageRemoved),
            );
          },
        );
      },
      builder: (context, state) {
        isImageUploaded =
            context.read<UploadImageCubit>().getImageUrl.isNotEmpty;
        debugPrint(
            'image url  ${context.read<UploadImageCubit>().getImageUrl}');
        return state.maybeWhen(
          orElse: () {
            return CircleAvatar(
              backgroundImage: isImageUploaded
                  ? NetworkImage(context.read<UploadImageCubit>().getImageUrl)
                      as ImageProvider
                  : const AssetImage(AppImages.userAvatar),
              // backgroundColor: Colors.black.withOpacity(0.1),
              radius: 50.r,
              child: Stack(
                children: [
                  Container(
                    width: 100.w,
                    height: 100.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black.withOpacity(0.3),
                    ),
                  ),
                  isImageUploaded
                      ? Positioned(
                          top: -10,
                          right: -10,
                          child: Align(
                            alignment: Alignment.center,
                            child: IconButton(
                              icon: const Icon(
                                Icons.delete,
                                color: Colors.red,
                              ),
                              onPressed: () => context
                                  .read<UploadImageCubit>()
                                  .removeImage(),
                            ),
                          ),
                        )
                      : const SizedBox.shrink(),
                  isImageUploaded
                      ? const SizedBox.shrink()
                      : CircleAvatar(
                          radius: 50.r,
                          backgroundColor: Colors.black.withOpacity(0.3),
                          child: Align(
                            alignment: Alignment.center,
                            child: IconButton(
                              icon: const Icon(
                                Icons.add_a_photo,
                                color: Colors.white,
                              ),
                              onPressed: () async => await context
                                  .read<UploadImageCubit>()
                                  .uploadImage(),
                            ),
                          ),
                        )
                ],
              ),
            );
          },
          loading: () {
            return Container(
              width: 100.w,
              height: 100.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withOpacity(0.3),
              ),
              child: const Align(
                alignment: Alignment.center,
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
