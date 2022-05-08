import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:splashscreen/splashscreen.dart';
import 'package:waterflowestimated/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flow Detect",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(
          seconds: 3,
          navigateAfterSeconds: const Home(),
          title: const Text(
            'Flow Detect',
            style: TextStyle(
                fontFamily: "Orbitron",
                fontWeight: FontWeight.normal,
                fontSize: 25.0,
                color: Colors.white),
          ),
          backgroundColor: const Color.fromRGBO(30, 119, 187, 1),
          styleTextUnderTheLoader: const TextStyle(),
          loaderColor: Colors.white),
    );
  }
}
