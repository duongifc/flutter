import 'package:redux/redux.dart';
import 'package:flutter_traveloka/redux/language/models.dart';
import 'package:flutter_traveloka/redux/language/actions.dart';


//LanguageModel languageReducer(
//    LanguageModel language, dynamic action) {
//  if (action is SetLanguageAction) {
//    return setLanguage(language, action);
//  }
//  return language;
//}

final Reducer<LanguageModel> languageReducer = combineReducers([
  TypedReducer<LanguageModel, SetLanguageAction>(setLanguage),
]);

LanguageModel setLanguage(LanguageModel languageModel, SetLanguageAction action) {
  languageModel.countryCode = action.countryCode;
  languageModel.languageCode = action.languageCode;
  return languageModel;
}