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

  Widget nameText() {
    return TextFormField(
      keyboardType: TextInputType.name,
      style: const TextStyle(color: Color.fromRGBO(0, 0, 0, 1), fontSize: 19.0),
      decoration: const InputDecoration(
          icon: Icon(
            Icons.person,
            color: Color.fromARGB(255, 69, 68, 68),
            size: 44.0,
          ),
          labelText: 'ชื่อ - นามสกุล:',
          labelStyle: TextStyle(
              color: Color.fromARGB(255, 156, 146, 146),
              fontSize: 18.0,
              fontWeight: FontWeight.normal),
          helperText: 'กรอกข้อมูลเป็นตัวอักษรเท่านั้น!',
          helperStyle: TextStyle(
              color: Color.fromRGBO(41, 168, 223, 1),
              fontStyle: FontStyle.italic)),
    );
  }

  Widget emailText() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      style: const TextStyle(color: Color.fromRGBO(0, 0, 0, 1), fontSize: 19.0),
      decoration: const InputDecoration(
          icon: Icon(
            Icons.email,
            color: Color.fromARGB(255, 69, 68, 68),
            size: 44.0,
          ),
          labelText: 'อีเมลแอดเดรส:',
          labelStyle: TextStyle(
              color: Color.fromARGB(255, 156, 146, 146),
              fontSize: 18.0,
              fontWeight: FontWeight.normal),
          helperText: 'กรอกข้อมูลอีเมลของคุณ',
          helperStyle: TextStyle(
              color: Color.fromRGBO(41, 168, 223, 1),
              fontStyle: FontStyle.italic)),
    );
  }

  Widget passwordText() {
    return TextFormField(
      autofocus: false,
      obscureText: true,
      style: const TextStyle(color: Color.fromRGBO(0, 0, 0, 1), fontSize: 19.0),
      decoration: const InputDecoration(
          icon: Icon(
            Icons.lock_open,
            color: Color.fromARGB(255, 69, 68, 68),
            size: 44.0,
          ),
          labelText: 'กำหนดรหัสผ่าน:',
          labelStyle: TextStyle(
              color: Color.fromARGB(255, 156, 146, 146),
              fontSize: 18.0,
              fontWeight: FontWeight.normal),
          helperText: 'กรอกข้อมูลรหัสผ่านของคุณ',
          helperStyle: TextStyle(
              color: Color.fromRGBO(41, 168, 223, 1),
              fontStyle: FontStyle.italic)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("สมัครสมาชิก"),
        actions: [menuButton()],
        backgroundColor: const Color.fromRGBO(41, 168, 223, 1),
      ),
      body: ListView(
        padding: const EdgeInsets.all(40.0),
        children: [nameText(), emailText(), passwordText()],
      ),
    );
  }
}
