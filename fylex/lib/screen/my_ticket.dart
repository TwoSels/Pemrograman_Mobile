import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class my_ticket extends StatelessWidget {
  const my_ticket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff81D3A7),
        leading: Icon(Icons.airplane_ticket),
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "My Tickets",
          style: GoogleFonts.robotoCondensed(
              fontSize: 22, fontWeight: FontWeight.normal, color: Colors.black),
        ),
      ),
    );
  }
}
