import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppLocalizations {
  AppLocalizations(this.locale);

  final Locale locale;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  Map<String, String> _sentences;

  Future<bool> load() async {
    String data = await rootBundle.loadString('lib/resources/lang/${this.locale.languageCode}.json');
    this._sentences = new Map<String, String>.from(json.decode(data));
    return true;
  }

  String translate(String key) {
    return this._sentences[key];
  }
}

class ScreenLocalizations {
  final String _prefix;
  final AppLocalizations _appLocalizations;

  ScreenLocalizations(this._prefix, this._appLocalizations);

  String translate(String key) {
    return this._appLocalizations.translate(this._prefix + key);
  }
}