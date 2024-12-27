// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  final LoginDataModel? data;

  LoginResponse({this.data});

  factory LoginResponse.fromJson(String source) =>
      _$LoginResponseFromJson(json.decode(source));
}

@JsonSerializable()
class LoginDataModel {
  final LoginModel? login;

  LoginDataModel({this.login});

  factory LoginDataModel.fromJson(String source) =>
      _$LoginDataModelFromJson(json.decode(source));
}

@JsonSerializable()
class LoginModel {
  @JsonKey(name: 'access_token')
  final String? token;
  @JsonKey(name: 'refresh_token')
  final String? refreshToken;

  LoginModel({this.token, this.refreshToken});

  factory LoginModel.fromJson(String source) =>
      _$LoginModelFromJson(json.decode(source));
}
