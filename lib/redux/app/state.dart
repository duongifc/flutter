import 'package:flutter_traveloka/redux/language/models.dart';

class AppState {
  final LanguageModel languageModel;

  AppState(this.languageModel);

  factory AppState.initial() => AppState(
    new LanguageModel('vi', 'VN')
  );
}

enum ListState {
  listOnly, listWithNewItem
}