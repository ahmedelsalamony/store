// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:store/core/service/graphql/api_result.dart';
import 'package:store/core/utils/app_strings.dart';
import 'package:store/features/auth/data/data_source/auth_data_source.dart';
import 'package:store/features/auth/data/models/login_request_body.dart';
import 'package:store/features/auth/data/models/signup_request_body.dart';
import 'package:store/features/auth/data/models/user_role_response.dart';

class AuthRepo {
  final AuthDataSource _authDataSource;
  const AuthRepo(
    this._authDataSource,
  );

  Future<ApiResult> login(LoginRequestBody login) async {
    try {
      final response = await _authDataSource.login(login);
      return ApiResult.success(response);
    } catch (e) {
      return const ApiResult.failure(errorMessage);
    }
  }

  Future<UserRoleResponse> userRole(String token) async {
    final response = await _authDataSource.userRole(token);
    return response;
  }

  Future<ApiResult> signup(SignupRequestBody signup) async {
    dynamic response;
    try {
      response = await _authDataSource.signup(signup);
      return ApiResult.success(response);
    } catch (e) {
      debugPrint("signup Exception ===>  $response");
      return const ApiResult.failure(errorMessage);
    }
  }
}
