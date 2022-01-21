import 'package:flutter/material.dart';

class setting_screen extends StatelessWidget {
  const setting_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff96cdcd),
        title: Text("Setting", style: TextStyle(
          color: Colors.white
        ),),
      ),
    );
  }
}