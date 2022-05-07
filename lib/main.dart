// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:waterflowestimated/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Water Flow Estimated",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(
          seconds: 8,
          navigateAfterSeconds: Home(),
          title: new Text(
            'Water Flow Estimated',
            style: new TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.white),
          ),
          backgroundColor: Colors.blue,
          styleTextUnderTheLoader: new TextStyle(),
          loaderColor: Colors.white),
    );
  }
}
