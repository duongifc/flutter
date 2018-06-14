import 'package:flutter/material.dart';
import 'package:flutter_traveloka/localizations/AppLocalizations.dart';
import 'package:flutter_traveloka/redux/app/state.dart';
import 'package:flutter_traveloka/redux/language/models.dart';
import 'package:redux_dev_tools/redux_dev_tools.dart';

class LandingViewModel {
  final LanguageModel languageModel;
  String textGreeting;
  String textDetectedLanguage;
  String textPreferDifferentLanguage;
  String buttonContinue;

  LandingViewModel(this.languageModel);

  factory LandingViewModel.create(BuildContext context, DevToolsStore<AppState> store) {

    // Init view model
    LanguageModel languageModelFromState = store.state.languageModel;
    LandingViewModel viewModel = LandingViewModel(languageModelFromState);

    // Set text
    AppLocalizations appLocalizations = AppLocalizations.of(context);
    ScreenLocalizations screenLocalizations = new ScreenLocalizations('screen.landing.', appLocalizations);

    viewModel.textGreeting = screenLocalizations.translate('text.greeting');
    viewModel.textDetectedLanguage = screenLocalizations.translate('text.detected_language');
    viewModel.textPreferDifferentLanguage = screenLocalizations.translate('text.prefer_different_language');
    viewModel.buttonContinue = screenLocalizations.translate('button.continue');

    return viewModel;
  }
}