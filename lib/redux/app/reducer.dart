import 'package:flutter_traveloka/redux/app/state.dart';
import 'package:flutter_traveloka/redux/language/reducer.dart';

AppState appReducer(AppState state, action) => AppState(languageReducer(state.languageModel, action));