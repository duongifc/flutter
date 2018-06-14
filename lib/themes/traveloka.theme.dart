import 'package:flutter/material.dart';
import 'package:flutter_traveloka/themes/traveloka.color.dart';

final kTravelokaTheme = _buildTravelokaTheme();

ThemeData _buildTravelokaTheme() {
  final baseThemeData = ThemeData();

  final ThemeData base = new ThemeData(
    fontFamily: 'MuseoSans',
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: kBackgroundColor,

    textTheme: baseThemeData.textTheme.copyWith(
      title: baseThemeData.textTheme.title.copyWith(
        color: Colors.white
      )
    )
  );

  return base;
}
