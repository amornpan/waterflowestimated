// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //Methods

  Widget showLogo() {
    return Container(
        width: 120.0, height: 120.0, child: Image.asset("images/logo.png"));
  }

  Widget showAppName() {
    return Text("Water Flow Estimated");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[showLogo(), showAppName(), showAppName()],
        ),
      ),
    ));
  }
}
