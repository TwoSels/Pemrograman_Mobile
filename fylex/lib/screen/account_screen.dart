import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class account_screen extends StatelessWidget {
  const account_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.person),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Color(0xff81D3A7),
        title: Text(
          "My Account",
          style: GoogleFonts.robotoCondensed(
            fontSize: 22,
            fontWeight: FontWeight.normal,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
