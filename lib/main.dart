import 'package:flutter/material.dart';
import 'package:flutter\_localizations/flutter\_localizations.dart';

import 'package:flutter_traveloka/screens/landing.screen.dart';
import 'package:flutter_traveloka/themes/traveloka.theme.dart';
import 'package:flutter_traveloka/localizations/AppLocalizationsDelegate.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: kTravelokaTheme,
      supportedLocales: [
        const Locale('vi', 'VN'),
        const Locale('en', 'US')
      ],
      localizationsDelegates: [
        const AppLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      localeResolutionCallback: (Locale locale, Iterable<Locale> supportedLocales) {
        for (Locale supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale.languageCode || supportedLocale.countryCode == locale.countryCode) {
            return supportedLocale;
          }
        }

        return supportedLocales.first;
      },
      home: new LandingScreen(),
    );
  }
}
