import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:store/core/app/upload_image/model/upload_image_response.dart';
import 'package:store/features/auth/data/models/login_response.dart';
import 'package:store/features/auth/data/models/signup_response.dart';
import 'package:store/features/auth/data/models/user_role_response.dart';

part 'api_service.g.dart';

const String baseUrl = 'https://api.escuelajs.co';
const String graphql = '/graphql';

@RestApi(baseUrl: baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(graphql)
  Future<LoginResponse> login(
    @Body() Map<String, dynamic> mutation,
  );

  @GET('/api/v1/auth/profile')
  Future<UserRoleResponse> userRole();

  @POST('/api/v1/files/upload')
  Future<UploadImageResponse> uploadImage(
    @Body() FormData file,
  );

  @POST(graphql)
  Future<SignupResponse> signup(
    @Body() Map<String, dynamic> mutation,
  );
}
