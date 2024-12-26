import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store/core/service/shared_prefs/prefs_keys.dart';
import 'package:store/core/service/shared_prefs/shared_pref.dart';

part 'app_state.dart';
part 'app_cubit.freezed.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(const AppState.initial());
  bool isDark = true;
  String currentLangCode = 'en';
  Future<void> changeThemeMode({bool? modeFromShared}) async {
    if (modeFromShared != null) {
      emit(AppState.themeChangeMode(mode: modeFromShared));
    } else {
      isDark = !isDark;
      await SharedPref.sharedPreferences
          .setBool(PrefsKeys.themeMode, isDark)
          .then((value) => emit(AppState.themeChangeMode(mode: isDark)));
    }
  }

  Locale getSavedLanguage() {
    final Locale langFromShared = SharedPref.sharedPreferences
            .containsKey(PrefsKeys.language)
        ? Locale(SharedPref.sharedPreferences.getString(PrefsKeys.language)!)
        : const Locale('en');
    currentLangCode = langFromShared.languageCode;
    return langFromShared;
  }

  Future<void> changeLangToArabic() async {
    await SharedPref.sharedPreferences.setString(PrefsKeys.language, 'ar').then(
        (value) => emit(const AppState.changeLanguge(lang: Locale('ar'))));
    currentLangCode =
        SharedPref.sharedPreferences.getString(PrefsKeys.language)!;
  }

  Future<void> changeLangToEnglish() async {
    await SharedPref.sharedPreferences.setString(PrefsKeys.language, 'en').then(
        (value) => emit(const AppState.changeLanguge(lang: Locale('en'))));
    currentLangCode =
        SharedPref.sharedPreferences.getString(PrefsKeys.language)!;
  }
}
