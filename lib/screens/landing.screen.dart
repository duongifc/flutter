import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux_dev_tools/redux_dev_tools.dart';

import 'package:flutter_traveloka/localizations/AppLocalizations.dart';
import 'package:flutter_traveloka/redux/app/state.dart';
import 'package:flutter_traveloka/redux/language/models.dart';

class LandingScreen extends StatefulWidget {
  LandingScreen({Key key}) : super(key: key);

  @override
  _LandingScreenState createState() => new _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) => StoreConnector<AppState, _ViewModel>(
      converter: (Store<AppState> store) => _ViewModel.create(context, store),
      builder: (BuildContext context, _ViewModel viewModel) => Scaffold(
            appBar: new AppBar(
              // Here we take the value from the LandingScreen object that was created by
              // the App.build method, and use it to set our appbar title.
              title: new Text(
                  viewModel.pageTitle,
                  style: new TextStyle(
                      color: Theme.of(context).textTheme.title.color)),
            ),
            body: new Center(
              // Center is a layout widget. It takes a single child and positions it
              // in the middle of the parent.
              child: new Column(
                // Column is also layout widget. It takes a list of children and
                // arranges them vertically. By default, it sizes itself to fit its
                // children horizontally, and tries to be as tall as its parent.
                //
                // Invoke "debug paint" (press "p" in the console where you ran
                // "flutter run", or select "Toggle Debug Paint" from the Flutter tool
                // window in IntelliJ) to see the wireframe for each widget.
                //
                // Column has various properties to control how it sizes itself and
                // how it positions its children. Here we use mainAxisAlignment to
                // center the children vertically; the main axis here is the vertical
                // axis because Columns are vertical (the cross axis would be
                // horizontal).
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    'You have pushed the button this many times:',
                  ),
                  new Text(
                    '$_counter',
                    style: Theme.of(context).textTheme.display1,
                  ),
                  new Text(
                    'Language code is using is: ' + viewModel.languageModel.languageCode,
                    style: Theme.of(context).textTheme.subhead,
                  ),
                  new Text(
                    'Country code is using is: ' + viewModel.languageModel.countryCode,
                    style: Theme.of(context).textTheme.subhead,
                  ),
                ],
              ),
            ),
            floatingActionButton: new FloatingActionButton(
              onPressed: _incrementCounter,
              tooltip: 'Increment',
              child: new Icon(Icons.add),
            ), // This trailing comma makes auto-formatting nicer for build methods.
          ));
}

class _ViewModel {
  final String pageTitle;
  final LanguageModel languageModel;

  _ViewModel(this.pageTitle, this.languageModel);

  factory _ViewModel.create(BuildContext context, DevToolsStore<AppState> store) {
    LanguageModel languageModelFromState = store.state.languageModel;

    return _ViewModel(AppLocalizations.of(context).trans('screen.landing.title'), languageModelFromState);
  }
}
