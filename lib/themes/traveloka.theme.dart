import 'package:flutter/material.dart';
import 'package:flutter_traveloka/themes/traveloka.color.dart';

final kTravelokaTheme = _buildTravelokaTheme();

ThemeData _buildTravelokaTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: kBackgroundColor,
//    buttonColor: kShrinePink100,

//    cardColor: kShrineBackgroundWhite,
//    textSelectionColor: kShrinePink100,
//    errorColor: kShrineErrorRed,
  );
}
