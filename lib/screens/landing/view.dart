import 'package:flutter/material.dart';

import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'package:flutter_traveloka/redux/app/state.dart';
import 'package:flutter_traveloka/screens/landing/viewModel.dart';
import 'package:flutter_traveloka/themes/metrics.dart';

render(BuildContext context, int counter, VoidCallback incrementCounter) =>
    StoreConnector<AppState, LandingViewModel>(
        converter: (Store<AppState> store) =>
            LandingViewModel.create(context, store),
        builder: (BuildContext context, LandingViewModel viewModel) => Scaffold(
            backgroundColor: Theme.of(context).primaryColor,
            body: new Column(
              // This makes each child fill the full width of the screen
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                new Expanded(child: new Container(
                  child: new SingleChildScrollView(
                    padding: const EdgeInsets.only(top: 40.0, bottom: 40.0),
                    child: new Column(
                      children: <Widget>[
                        new Image(
                            image: new AssetImage(
                                'lib/resources/images/icon-bird-white.jpg'),
                            fit: BoxFit.cover,
                            width: 100.0,
                            height: 100.0),
                        new Container(
                            margin: const EdgeInsets.only(
                                bottom: Metrics.doubleSpacing),
                            child: Text(
                              viewModel.textGreeting,
                              style: Theme.of(context).textTheme.body1,
                            )),
                        new Text(
                          viewModel.textDetectedLanguage,
                          style: Theme.of(context).textTheme.body1,
                        )
                      ],
                    ),
                  ),
                )),
                new Container(
                  color: Colors.white,
                  height: 40.0,
                  child: new FlatButton(
                      onPressed: null,
                      child: new Text(viewModel.buttonContinue,
                          style: Theme.of(context).textTheme.button.copyWith(
                            color: Theme.of(context).primaryColor
                          ))),
                ),
              ],
            )));
