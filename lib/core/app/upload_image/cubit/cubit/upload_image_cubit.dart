// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

import 'package:store/core/app/upload_image/repo/upload_image_repo.dart';
import 'package:store/core/utils/image_pick_utils.dart';

part 'upload_image_cubit.freezed.dart';
part 'upload_image_state.dart';

class UploadImageCubit extends Cubit<UploadImageState> {
  final UploadImageRepo uploadImageRepo;
  UploadImageCubit(
    this.uploadImageRepo,
  ) : super(const UploadImageState.initial());

  String getImageUrl = '';

  Future<void> uploadImage() async {
    emit(const UploadImageState.loading());
    XFile? image = await ImagePickUtils.instance.pickImage();
    if (image == null) return;
    final response = await uploadImageRepo.uploadImage(image);
    response.when(success: (image) {
      getImageUrl = image.location;
      emit(
        const UploadImageState.success(),
      );
    }, failure: (error) {
      emit(const UploadImageState.failure());
    });
  }

  removeImage(String imageUrl) async {
    imageUrl = '';
    emit(UploadImageState.remove(imageUrl: imageUrl));
  }
}
