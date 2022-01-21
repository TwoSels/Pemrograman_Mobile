import 'package:flutter/material.dart';

class notification_screen extends StatelessWidget {
  const notification_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff96cdcd),
        title: Text("Notification",
        style: TextStyle(
          color: Colors.white
        ),
        ),
      ),
    );
  }
}