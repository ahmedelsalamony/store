import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';
import 'package:store/core/app/upload_image/model/upload_image_response.dart';
import 'package:store/core/service/graphql/api_service.dart';

class UploadImageDataSource {
  final ApiService apiService;
  UploadImageDataSource(this.apiService);
  Future<UploadImageResponse> uploadImage({required XFile image}) async {
    FormData formData = FormData.fromMap({
      'file': await MultipartFile.fromFile(image.path),
    });
    final response = await apiService.uploadImage(formData);
    return response;
  }
}
