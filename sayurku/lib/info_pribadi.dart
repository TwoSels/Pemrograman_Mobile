import 'package:flutter/material.dart';
import 'package:sayurku/profil_screen.dart';

class info_pribadi extends StatefulWidget {
  info_pribadi({Key? key}) : super(key: key);

  @override
  _info_pribadiState createState() => _info_pribadiState();
}

class _info_pribadiState extends State<info_pribadi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => profil_screen()));
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Info Pribadi",
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
