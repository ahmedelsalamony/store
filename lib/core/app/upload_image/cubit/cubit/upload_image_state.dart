part of 'upload_image_cubit.dart';

@freezed
class UploadImageState with _$UploadImageState {
  const factory UploadImageState.initial() = _Initial;
  const factory UploadImageState.loading() = _Loading;
  const factory UploadImageState.success() = _Success;
  const factory UploadImageState.failure() = _Failure;
  const factory UploadImageState.remove() = _Remove;
}
