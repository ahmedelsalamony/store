part of 'app_cubit.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.initial() = _Initial;
  const factory AppState.themeChangeMode({required bool mode}) =
      _ThemeChangeModeState;
  const factory AppState.changeLanguge({required Locale lang}) = _ChangeLanguge;
}
