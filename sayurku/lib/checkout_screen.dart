import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sayurku/card/card_pesanan.dart';
import 'package:sayurku/cart_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:sayurku/payment_screen.dart';

class checkout_Screen extends StatefulWidget {
  checkout_Screen({Key? key}) : super(key: key);

  @override
  _checkout_ScreenState createState() => _checkout_ScreenState();
}

class _checkout_ScreenState extends State<checkout_Screen> {
  @override
  bool _show = false;
  final _gkey = new GlobalKey<ScaffoldState>();
  Widget build(BuildContext context) {
    return Scaffold(
      key: _gkey,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => cart_screen()));
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Checkout",
          style: GoogleFonts.roboto(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: Column(
          children: [
            alamat(),
            SizedBox(
              height: 10,
            ),
            total(),
            SizedBox(
              height: 170,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    displayBottomSheet();
                  },
                  child: Row(
                    children: [
                      Icon(Icons.delivery_dining_outlined),
                      Text(" Pilih Pengiriman")
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            BottomAppBar(
              color: Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "  Total Harga ",
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
                    width: 70,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => payment_screen()));
                      },
                      child: Text("Pilih Pembayaran"))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void displayBottomSheet() {
    _gkey.currentState?.showBottomSheet((context) {
      return Container(
          height: 200,
          width: double.infinity,
          color: Colors.white,
          alignment: Alignment.center,
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child: Text("Opsi Pengiriman"),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context, true);
                  },
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Text(
                              "Pengiriman Cepat (Rp10.000)",
                              style: TextStyle(color: Colors.black),
                            ),
                            Text(
                              "Estimasi tiba 30 Menit",
                              style: TextStyle(color: Colors.black),
                            )
                          ],
                        ),
                      )
                    ],
                  )),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context, true);
                  },
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Text(
                              "Pengiriman Sedang (Rp8.000)",
                              style: TextStyle(color: Colors.black),
                            ),
                            Text(
                              "Estimai tiba 2 jam",
                              style: TextStyle(color: Colors.black),
                            )
                          ],
                        ),
                      )
                    ],
                  )),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context, true);
                  },
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Text(
                              "Pengiriman Lambat (Rp5.000)",
                              style: TextStyle(color: Colors.black),
                            ),
                            Text(
                              "Estimasi tiba 3-4 ",
                              style: TextStyle(color: Colors.black),
                            )
                          ],
                        ),
                      )
                    ],
                  ))
            ],
          ));
    });
  }
}
