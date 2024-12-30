import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  final LoginDataModel data;

  LoginResponse(this.data);

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

@JsonSerializable()
class LoginDataModel {
  final LoginModel login;

  LoginDataModel(this.login);

  factory LoginDataModel.fromJson(Map<String, dynamic> json) =>
      _$LoginDataModelFromJson(json);
}

@JsonSerializable()
class LoginModel {
  @JsonKey(name: 'access_token')
  final String? token;
  @JsonKey(name: 'refresh_token')
  final String? refreshToken;

  LoginModel({this.token, this.refreshToken});

  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      _$LoginModelFromJson(json);
}
