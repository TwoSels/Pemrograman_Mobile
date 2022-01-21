import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sayurku/card/card_pesanan.dart';
import 'package:sayurku/checkout_screen.dart';

class payment_screen extends StatefulWidget {
  payment_screen({Key? key}) : super(key: key);

  @override
  _payment_screenState createState() => _payment_screenState();
}

class _payment_screenState extends State<payment_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => checkout_Screen()));
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        title: Text(
          "Pembayaran",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            linkaja(),
            SizedBox(
              height: 460,
            ),
            BottomAppBar(
              color: Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "  Total Bayar ",
                    style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Column(
                    children: [
                      Text(
                        "Rp. 30.000",
                        style: GoogleFonts.roboto(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 130,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => payment_screen()));
                      },
                      child: Text("Bayar"))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
