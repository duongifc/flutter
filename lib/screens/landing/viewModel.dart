import 'package:flutter/material.dart';
import 'package:flutter_traveloka/localizations/AppLocalizations.dart';
import 'package:flutter_traveloka/redux/app/state.dart';
import 'package:flutter_traveloka/redux/language/models.dart';
import 'package:redux_dev_tools/redux_dev_tools.dart';

class LandingViewModel {
  final String pageTitle;
  final LanguageModel languageModel;

  LandingViewModel(this.pageTitle, this.languageModel);

  factory LandingViewModel.create(BuildContext context, DevToolsStore<AppState> store) {
    LanguageModel languageModelFromState = store.state.languageModel;

    return LandingViewModel(AppLocalizations.of(context).trans('screen.landing.title'), languageModelFromState);
  }
}