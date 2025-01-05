import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_response.g.dart';

@JsonSerializable()
class SignupResponse {
  final SignupDataModel data;

  const SignupResponse({
    required this.data,
  });

  factory SignupResponse.fromJson(Map<String, dynamic> json) =>
      _$SignupResponseFromJson(json);
}

@JsonSerializable()
class SignupDataModel {
  final AddUserModel addUser;

  const SignupDataModel({
    required this.addUser,
  });

  factory SignupDataModel.fromJson(Map<String, dynamic> json) =>
      _$SignupDataModelFromJson(json);
}

@JsonSerializable()
class AddUserModel {
  final String email;
  final String id;

  const AddUserModel({
    required this.email,
    required this.id,
  });

  factory AddUserModel.fromJson(Map<String, dynamic> json) =>
      _$AddUserModelFromJson(json);
}
