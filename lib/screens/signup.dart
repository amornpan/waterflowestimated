import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  // Explicit

  // Method
  Widget menuButton() {
    return IconButton(onPressed: () {}, icon: const Icon(Icons.menu));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("สมัครสมาชิก"),
        actions: <Widget>[menuButton()],
        backgroundColor: const Color.fromRGBO(41, 168, 223, 1),
      ),
      body: const Text("body"),
    );
  }
}
