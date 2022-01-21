import 'package:flutter/material.dart';

class test_screen extends StatelessWidget {
  const test_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: TextButton(onPressed: (){}, child: Text("Kembali", style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w400,
            color: Colors.white
          ),)),
        ),
      ),
    );
  }
}