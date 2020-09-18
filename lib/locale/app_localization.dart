import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class AppLocalization {
  final Locale locale;
  Map<String, String> _localizedValues;

  AppLocalization(this.locale);

  static AppLocalization of(BuildContext context) {
    return Localizations.of<AppLocalization>(context, AppLocalization);
  }

  Future load() async {
    String jsonValues = await rootBundle
        .loadString('lib/locale/translations/${locale.languageCode}.json');
    Map<String, dynamic> mappedJson = jsonDecode(jsonValues);
    _localizedValues = mappedJson.map((key, value) => MapEntry(key, value));
  }

  String getTranslatedValues(String key) {
    return _localizedValues[key];
  }

  static const LocalizationsDelegate<AppLocalization> delegate =
      const _AppLocalizationDelegate();
}

class _AppLocalizationDelegate extends LocalizationsDelegate<AppLocalization> {
  @override
  bool isSupported(Locale locale) {
    return ['en', 'tr', 'ru', 'uz'].contains(locale.languageCode);
  }

  const _AppLocalizationDelegate();

  @override
  Future<AppLocalization> load(Locale locale) async {
    AppLocalization localization = new AppLocalization(locale);
    await localization.load();
    return localization;
  }

  @override
  bool shouldReload(LocalizationsDelegate<AppLocalization> old) => false;
}

