import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:store/core/di/injection_container.dart';

class ImagePickUtils {
  ImagePickUtils._();

  static final ImagePickUtils _instance = ImagePickUtils._();

  static ImagePickUtils get instance => _instance;

  Future<XFile?> pickImage() async {
    try {
      final result = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (result == null) return null;
      return XFile(result.path);
    } catch (e) {
      final permissionStatus = await Permission.photos.request();
      if (permissionStatus.isPermanentlyDenied) {
        await showPermissionDialog();
      } else {
        debugPrint("image picker Exception ===> $e");
      }
    }
    return null;
  }

  Future<void> showPermissionDialog() {
    return showCupertinoDialog(
        context: sl<GlobalKey<NavigatorState>>().currentState!.context,
        builder: (context) {
          return CupertinoAlertDialog(
              title: const Text('Permission Denied'),
              content: const Text('Please allow the app to access the gallery'),
              actions: [
                CupertinoDialogAction(
                  child: const Text('Cancel'),
                  onPressed: () => Navigator.pop(context),
                ),
                CupertinoDialogAction(
                  child: const Text('Settings'),
                  onPressed: () {
                    openAppSettings();
                  },
                ),
              ]);
        });
  }
}
