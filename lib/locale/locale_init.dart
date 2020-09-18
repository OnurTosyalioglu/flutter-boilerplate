import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'app_localization.dart';

class LocaleInit {
  LocaleInit._();

  static const supportedLocales = [
    Locale('en', 'US'),
    Locale('ru', 'RU'),
    Locale('uz', 'UZ'),
    Locale('tr', 'TR'),
  ];

  static const localizationDelegates = [
    AppLocalization.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ];

  static String locale (BuildContext context, String value) {
    return AppLocalization.of(context).getTranslatedValues(value);
  }
}
