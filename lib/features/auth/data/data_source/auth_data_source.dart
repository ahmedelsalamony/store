import 'package:dio/dio.dart';
import 'package:store/core/service/graphql/api_service.dart';
import 'package:store/core/service/graphql/graphql_queries/auth/auth_queries.dart';
import 'package:store/features/auth/data/models/login_request_body.dart';
import 'package:store/features/auth/data/models/login_response.dart';
import 'package:store/features/auth/data/models/signup_request_body.dart';
import 'package:store/features/auth/data/models/signup_response.dart';
import 'package:store/features/auth/data/models/user_role_response.dart';

class AuthDataSource {
  final ApiService graphql;

  AuthDataSource(this.graphql);

  Future<LoginResponse> login(LoginRequestBody login) async {
    return graphql.login(
      AuthQueries().loginMapQuery(login: login),
    );
  }

  Future<UserRoleResponse> userRole(String token) async {
    final dio = Dio();
    dio.options.headers['Authorization'] = 'Bearer $token';
    final client = ApiService(dio);
    final response = await client.userRole();
    return response;
  }

  Future<SignupResponse> signup(SignupRequestBody signup) async {
    return graphql.signup(
      AuthQueries().signupMapQuery(signupBody: signup),
    );
  }
}
