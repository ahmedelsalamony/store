// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupResponse _$SignupResponseFromJson(Map<String, dynamic> json) =>
    SignupResponse(
      data: SignupDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SignupResponseToJson(SignupResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

SignupDataModel _$SignupDataModelFromJson(Map<String, dynamic> json) =>
    SignupDataModel(
      addUser: AddUserModel.fromJson(json['addUser'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SignupDataModelToJson(SignupDataModel instance) =>
    <String, dynamic>{
      'addUser': instance.addUser,
    };

AddUserModel _$AddUserModelFromJson(Map<String, dynamic> json) => AddUserModel(
      email: json['email'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$AddUserModelToJson(AddUserModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'id': instance.id,
    };
