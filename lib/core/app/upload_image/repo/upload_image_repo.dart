import 'package:image_picker/image_picker.dart';
import 'package:store/core/app/upload_image/data/upload_image_data_source.dart';
import 'package:store/core/service/graphql/api_result.dart';

class UploadImageRepo {
  final UploadImageDataSource _uploadImageDataSource;

  UploadImageRepo(this._uploadImageDataSource);
  Future<ApiResult> uploadImage(XFile file) async {
    try {
      final response = await _uploadImageDataSource.uploadImage(
        image: file,
      );
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(e.toString());
    }
  }
}
