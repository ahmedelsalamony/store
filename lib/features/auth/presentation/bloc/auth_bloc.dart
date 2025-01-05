import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store/core/service/shared_prefs/prefs_keys.dart';
import 'package:store/core/service/shared_prefs/shared_pref.dart';
import 'package:store/features/auth/data/data_source/auth_repo.dart';
import 'package:store/features/auth/data/models/login_request_body.dart';
import 'package:store/features/auth/data/models/signup_request_body.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepo _authRepo;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  AuthBloc(this._authRepo) : super(const _Initial());

  FutureOr<void> _login(_LoginEvent event, Emitter<AuthState> emit) async {
    emit(const _Loading());
    final result = await _authRepo.login(LoginRequestBody(
      email: emailController.text.trim(),
      password: passwordController.text,
    ));
    await result.when(success: (success) async {
      final token = success.data.login.token ?? '';
      await SharedPref.sharedPreferences
          .setString(PrefsKeys.accessToken, token);
      await _authRepo.userRole(token).then((value) async {
        emit(_Success(userRole: value.userRole ?? ''));
        await SharedPref.sharedPreferences
            .setString(PrefsKeys.userRole, value.userRole ?? '');
      });
    }, failure: (error) {
      emit(_Failure(error));
    });
  }

  FutureOr<void> _signup(_SignupEvent event, Emitter<AuthState> emit) async {
    emit(const _Loading());
    final result = await _authRepo.signup(SignupRequestBody(
      email: emailController.text.trim(),
      password: passwordController.text,
      name: nameController.text.trim(),
      avatar: event.avatarUrl,
      role: 'user',
    ));
    await result.when(success: (success) async {
      add(const AuthEvent.login());
    }, failure: (error) {
      emit(_Failure(error));
    });
  }
}
