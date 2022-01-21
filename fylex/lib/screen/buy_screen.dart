import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class buy_tickets extends StatelessWidget {
  const buy_tickets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff81D3A7),
        leading: Icon(Icons.airplanemode_active),
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Buy Tickets",
          style: GoogleFonts.robotoCondensed(
              fontSize: 22, fontWeight: FontWeight.normal, color: Colors.black),
        ),
      ),
    );
  }
}
