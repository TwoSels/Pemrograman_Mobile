import 'package:flutter/material.dart';
//import 'package:beautyme/login_screen.dart';
//import 'package:beautyme/register_screen.dart';

class welcome_screen extends StatelessWidget {
  const welcome_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Container(
        child: Center(
          child: Text(
            "Welcom Screen",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.normal),
          ),
        ),
      ),
    );
  }
}