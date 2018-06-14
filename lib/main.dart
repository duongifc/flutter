import 'package:flutter/material.dart';
import 'package:flutter\_localizations/flutter\_localizations.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_dev_tools/redux_dev_tools.dart';

// Redux
import 'package:flutter_traveloka/redux/app/state.dart';
import 'package:flutter_traveloka/redux/app/reducer.dart';
import 'package:flutter_traveloka/redux/app/middleware.dart';

// Routing
import 'package:flutter_traveloka/screens/landing/screen.dart';

// Styling
import 'package:flutter_traveloka/themes/traveloka.theme.dart';

//Localization
import 'package:flutter_traveloka/localizations/AppLocalizationsDelegate.dart';

void main() {
  final Store<AppState> store = DevToolsStore<AppState>(
    appReducer,
    initialState: AppState.initial(),
    middleware: createStoreMiddleware(),
  );
  runApp(new MyApp(store));
}

class MyApp extends StatelessWidget {

  final Store<AppState> store;

  MyApp(this.store);

  @override
  Widget build(BuildContext context) {
    return new StoreProvider(
        store: store,
        child: MaterialApp(
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
          localeResolutionCallback: (Locale locale,
              Iterable<Locale> supportedLocales) {
            for (Locale supportedLocale in supportedLocales) {
              if (supportedLocale.languageCode == locale.languageCode ||
                  supportedLocale.countryCode == locale.countryCode) {
                return supportedLocale;
              }
            }

            return supportedLocales.first;
          },
          home: new LandingScreen(),
        )
    );
  }
}
