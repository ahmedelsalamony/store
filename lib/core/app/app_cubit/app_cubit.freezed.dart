// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool mode) themeChangeMode,
    required TResult Function(Locale lang) changeLanguge,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool mode)? themeChangeMode,
    TResult? Function(Locale lang)? changeLanguge,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool mode)? themeChangeMode,
    TResult Function(Locale lang)? changeLanguge,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ThemeChangeModeState value) themeChangeMode,
    required TResult Function(_ChangeLanguge value) changeLanguge,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ThemeChangeModeState value)? themeChangeMode,
    TResult? Function(_ChangeLanguge value)? changeLanguge,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ThemeChangeModeState value)? themeChangeMode,
    TResult Function(_ChangeLanguge value)? changeLanguge,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AppState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool mode) themeChangeMode,
    required TResult Function(Locale lang) changeLanguge,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool mode)? themeChangeMode,
    TResult? Function(Locale lang)? changeLanguge,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool mode)? themeChangeMode,
    TResult Function(Locale lang)? changeLanguge,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ThemeChangeModeState value) themeChangeMode,
    required TResult Function(_ChangeLanguge value) changeLanguge,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ThemeChangeModeState value)? themeChangeMode,
    TResult? Function(_ChangeLanguge value)? changeLanguge,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ThemeChangeModeState value)? themeChangeMode,
    TResult Function(_ChangeLanguge value)? changeLanguge,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AppState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ThemeChangeModeStateImplCopyWith<$Res> {
  factory _$$ThemeChangeModeStateImplCopyWith(_$ThemeChangeModeStateImpl value,
          $Res Function(_$ThemeChangeModeStateImpl) then) =
      __$$ThemeChangeModeStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool mode});
}

/// @nodoc
class __$$ThemeChangeModeStateImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$ThemeChangeModeStateImpl>
    implements _$$ThemeChangeModeStateImplCopyWith<$Res> {
  __$$ThemeChangeModeStateImplCopyWithImpl(_$ThemeChangeModeStateImpl _value,
      $Res Function(_$ThemeChangeModeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
  }) {
    return _then(_$ThemeChangeModeStateImpl(
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ThemeChangeModeStateImpl implements _ThemeChangeModeState {
  const _$ThemeChangeModeStateImpl({required this.mode});

  @override
  final bool mode;

  @override
  String toString() {
    return 'AppState.themeChangeMode(mode: $mode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeChangeModeStateImpl &&
            (identical(other.mode, mode) || other.mode == mode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mode);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeChangeModeStateImplCopyWith<_$ThemeChangeModeStateImpl>
      get copyWith =>
          __$$ThemeChangeModeStateImplCopyWithImpl<_$ThemeChangeModeStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool mode) themeChangeMode,
    required TResult Function(Locale lang) changeLanguge,
  }) {
    return themeChangeMode(mode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool mode)? themeChangeMode,
    TResult? Function(Locale lang)? changeLanguge,
  }) {
    return themeChangeMode?.call(mode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool mode)? themeChangeMode,
    TResult Function(Locale lang)? changeLanguge,
    required TResult orElse(),
  }) {
    if (themeChangeMode != null) {
      return themeChangeMode(mode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ThemeChangeModeState value) themeChangeMode,
    required TResult Function(_ChangeLanguge value) changeLanguge,
  }) {
    return themeChangeMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ThemeChangeModeState value)? themeChangeMode,
    TResult? Function(_ChangeLanguge value)? changeLanguge,
  }) {
    return themeChangeMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ThemeChangeModeState value)? themeChangeMode,
    TResult Function(_ChangeLanguge value)? changeLanguge,
    required TResult orElse(),
  }) {
    if (themeChangeMode != null) {
      return themeChangeMode(this);
    }
    return orElse();
  }
}

abstract class _ThemeChangeModeState implements AppState {
  const factory _ThemeChangeModeState({required final bool mode}) =
      _$ThemeChangeModeStateImpl;

  bool get mode;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ThemeChangeModeStateImplCopyWith<_$ThemeChangeModeStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeLangugeImplCopyWith<$Res> {
  factory _$$ChangeLangugeImplCopyWith(
          _$ChangeLangugeImpl value, $Res Function(_$ChangeLangugeImpl) then) =
      __$$ChangeLangugeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Locale lang});
}

/// @nodoc
class __$$ChangeLangugeImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$ChangeLangugeImpl>
    implements _$$ChangeLangugeImplCopyWith<$Res> {
  __$$ChangeLangugeImplCopyWithImpl(
      _$ChangeLangugeImpl _value, $Res Function(_$ChangeLangugeImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lang = freezed,
  }) {
    return _then(_$ChangeLangugeImpl(
      lang: freezed == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc

class _$ChangeLangugeImpl implements _ChangeLanguge {
  const _$ChangeLangugeImpl({required this.lang});

  @override
  final Locale lang;

  @override
  String toString() {
    return 'AppState.changeLanguge(lang: $lang)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeLangugeImpl &&
            const DeepCollectionEquality().equals(other.lang, lang));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(lang));

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeLangugeImplCopyWith<_$ChangeLangugeImpl> get copyWith =>
      __$$ChangeLangugeImplCopyWithImpl<_$ChangeLangugeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool mode) themeChangeMode,
    required TResult Function(Locale lang) changeLanguge,
  }) {
    return changeLanguge(lang);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool mode)? themeChangeMode,
    TResult? Function(Locale lang)? changeLanguge,
  }) {
    return changeLanguge?.call(lang);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool mode)? themeChangeMode,
    TResult Function(Locale lang)? changeLanguge,
    required TResult orElse(),
  }) {
    if (changeLanguge != null) {
      return changeLanguge(lang);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ThemeChangeModeState value) themeChangeMode,
    required TResult Function(_ChangeLanguge value) changeLanguge,
  }) {
    return changeLanguge(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ThemeChangeModeState value)? themeChangeMode,
    TResult? Function(_ChangeLanguge value)? changeLanguge,
  }) {
    return changeLanguge?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ThemeChangeModeState value)? themeChangeMode,
    TResult Function(_ChangeLanguge value)? changeLanguge,
    required TResult orElse(),
  }) {
    if (changeLanguge != null) {
      return changeLanguge(this);
    }
    return orElse();
  }
}

abstract class _ChangeLanguge implements AppState {
  const factory _ChangeLanguge({required final Locale lang}) =
      _$ChangeLangugeImpl;

  Locale get lang;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeLangugeImplCopyWith<_$ChangeLangugeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
