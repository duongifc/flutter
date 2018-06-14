import 'package:flutter/material.dart';

import 'package:flutter_traveloka/screens/home.screen.dart';
import 'package:flutter_traveloka/themes/traveloka.theme.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: kTravelokaTheme,
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
