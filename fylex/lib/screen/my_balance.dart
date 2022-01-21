import 'package:flutter/material.dart';
import 'package:fylex/components/komponen.dart';
import 'package:google_fonts/google_fonts.dart';

class balance_Screen extends StatelessWidget {
  const balance_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff81D3A7),
        title: Center(
            child: Column(
          children: [
            Text(
              "My Balance",
              style: GoogleFonts.robotoCondensed(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.black),
            ),
            Text(
              "Rp.- 5.350.000",
              style: GoogleFonts.robotoCondensed(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  color: Colors.black),
            )
          ],
        )),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 100,
                    width: 300,
                    child: Card(
                      color: Color(0xff81D3A7),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(image: AssetImage('assets/TU_icon.png')),
                              Column(
                                children: [Text("Top UP!")],
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(image: AssetImage('assets/qr.png')),
                              Column(
                                children: [Text("QR Scan")],
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(image: AssetImage('assets/tf.png')),
                              Column(
                                children: [Text("Transfer")],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment(-0.9, 0),
              child: Column(
                children: [Text("Transaction History")],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                transaksi_card(),
                SizedBox(
                  height: 10,
                ),
                transaksi_card(),
                SizedBox(
                  height: 10,
                ),
                transaksi_card(),
                SizedBox(
                  height: 10,
                ),
                transaksi_card()
              ],
            ),
            Image(image: AssetImage('assets/logo.png'))
          ],
        ),
      ),
    );
  }
}
