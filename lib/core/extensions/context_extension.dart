import 'package:flutter/material.dart';
import 'package:store/core/language/app_localizations.dart';

extension ContextExtension on BuildContext {
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;

  Future<dynamic> pushNamed(String routeName, {Object? arguments}) async {
    return Navigator.pushNamed(this, routeName);
  }

  String translate(String langKey) {
    return AppLocalizations.of(this)!.translate(langKey).toString();
  }

  Future<dynamic> pushReplacementNamed(String routeName,
      {Object? arguments}) async {
    return Navigator.pushReplacementNamed(this, routeName);
  }

  Future<dynamic> pushNamedAndRemoveUntil(String routeName,
      {Object? arguments}) async {
    return Navigator.pushNamedAndRemoveUntil(this, routeName, (route) => false);
  }

  Future<dynamic> pop() async {
    return Navigator.pop(this);
  }
}
