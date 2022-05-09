import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:waterflowestimated/screens/signup.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //Methods

  Widget showLogo() {
    return SizedBox(
        width: 150.0, height: 150.0, child: Image.asset("images/logo.png"));
  }

  Widget showAppName() {
    return const Text(
      "Flow Detect",
      style: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.normal,
          color: Color.fromRGBO(30, 119, 187, 1),
          fontFamily: "Orbitron"),
    );
  }

  Widget signInButton() {
    return ElevatedButton(
      onPressed: () {
        debugPrint('You click Sign in botton');
      },
      child: const Text("เข้าสู่ระบบ"),
      style: ElevatedButton.styleFrom(
          fixedSize: const Size(250, 50),
          shadowColor: Colors.black,
          elevation: 10,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          primary: const Color.fromRGBO(41, 168, 223, 1),
          textStyle: const TextStyle(
            fontStyle: FontStyle.normal,
            fontSize: 21.0,
            fontFamily: "Orbitron",
          )),
    );
  }

  Widget signUpButton() {
    return OutlinedButton(
      onPressed: () {
        //print('You click Signup botton');

        MaterialPageRoute materialPageRoute = MaterialPageRoute(
            builder: (BuildContext context) => const Signup());
        Navigator.of(context).push(materialPageRoute);
      },
      child: const Text("สมัครสมาชิก"),
      style: ElevatedButton.styleFrom(
          primary: Colors.white,
          shadowColor: Colors.black,
          elevation: 10,
          fixedSize: const Size(250, 50),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          textStyle: const TextStyle(
            fontStyle: FontStyle.normal,
            fontSize: 21.0,
            fontFamily: "Orbitron",
            color: Color.fromRGBO(41, 168, 223, 1),
          )),
    );
  }

  Widget showButton() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        signInButton(),
        const SizedBox(height: 20),
        signUpButton()
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ColorfulSafeArea(
          overflowRules: const OverflowRules.all(true),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                showLogo(),
                const SizedBox(height: 20),
                showAppName(),
                const SizedBox(height: 200),
                showButton()
              ],
            ),
          ),
        ));
  }
}
