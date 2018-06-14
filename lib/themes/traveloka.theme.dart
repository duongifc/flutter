import 'package:flutter/material.dart';
import 'package:flutter_traveloka/themes/traveloka.color.dart';

final kTravelokaTheme = _buildTravelokaTheme();

ThemeData _buildTravelokaTheme() {
  final ThemeData base = ThemeData.light();

  return base.copyWith(
    textTheme: base.textTheme.copyWith(
//        fontFamily: 'MuseoSans'
      body1: base.textTheme.body1.copyWith(
        color: Colors.white,
        fontFamily: 'MuseoSans',
        fontWeight: FontWeight.w300
      ),
      body2: base.textTheme.body2.copyWith(
          color: Colors.white,
          fontFamily: 'MuseoSans',
          fontWeight: FontWeight.w100
      ),
      button: base.textTheme.button.copyWith(
          color: Colors.white,
          fontFamily: 'MuseoSans',
          fontWeight: FontWeight.w500
      )
    ),
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: kBackgroundColor,

  );
}
