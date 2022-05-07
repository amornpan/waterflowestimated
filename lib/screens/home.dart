// ignore_for_file: prefer_const_constructors

import 'package:colorful_safe_area/colorful_safe_area.dart';
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
    return Text(
      "ประเมินอัตราการไหล",
      style: TextStyle(
          fontSize: 30.0,
          color: Colors.lightBlueAccent.shade700,
          fontFamily: "Kanit"),
    );
  }

  Widget signInButton() {
    return ElevatedButton(
      onPressed: () {},
      child: const Text("เข้าสู่ระบบ"),
      style:
          ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 15.0)),
    );
  }

  Widget signUpButton() {
    return OutlinedButton(
      onPressed: () {},
      child: Text("สมัครสมาชิก"),
      style:
          OutlinedButton.styleFrom(textStyle: const TextStyle(fontSize: 15.0)),
    );
  }

  Widget showButton() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[signInButton(), SizedBox(width: 10), signUpButton()],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ColorfulSafeArea(
          overflowRules: OverflowRules.all(true),
          
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                showLogo(),
                SizedBox(height: 10),
                showAppName(),
                SizedBox(height: 10),
                showButton()
              ],
            ),
          ),
        ));
  }
}
