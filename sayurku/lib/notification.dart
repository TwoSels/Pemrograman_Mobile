import 'package:flutter/material.dart';
import 'package:sayurku/home_screen.dart';

class notification_screen extends StatelessWidget {
  const notification_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => home_screen()));
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Notification",
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
