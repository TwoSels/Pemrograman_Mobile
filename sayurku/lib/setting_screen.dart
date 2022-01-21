import 'package:flutter/material.dart';
import 'package:sayurku/home_screen.dart';

class setting_Screen extends StatelessWidget {
  const setting_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        backgroundColor: Colors.white,
        title: Text(
          "Setting",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(),
    );
  }
}
