import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sayurku/card/card_pesanan.dart';
import 'package:sayurku/checkout_screen.dart';
import 'package:sayurku/home_screen.dart';
import 'package:sayurku/widget/CustomWidget.dart';
import 'package:sayurku/profil_screen.dart';
import 'package:sayurku/setting_screen.dart';
import 'package:sayurku/login_screen.dart';

class cart_screen extends StatefulWidget {
  cart_screen({Key? key}) : super(key: key);

  @override
  _cart_screenState createState() => _cart_screenState();
}

class _cart_screenState extends State<cart_screen> {
  @override
  bool _isChecked = false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
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
          "Keranjang",
          style: GoogleFonts.roboto(
              fontSize: 18, fontWeight: FontWeight.w700, color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/blank.png"),
                  fit: BoxFit.cover,
                ),
                //color: Colors.green,
              ),
              child: Text(
                'Rahmad Darmawan',
                textAlign: TextAlign.left,
                style: TextStyle(
                  height: 10,
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text(
                'Home',
                style: GoogleFonts.roboto(
                    fontSize: 14, fontWeight: FontWeight.w500),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => home_screen()));
              },
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text(
                'Profile',
                style: GoogleFonts.roboto(
                    fontSize: 14, fontWeight: FontWeight.w500),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => profil_screen()));
              },
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text(
                'Help',
                style: GoogleFonts.roboto(
                    fontSize: 14, fontWeight: FontWeight.w500),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings',
                  style: GoogleFonts.roboto(
                      fontSize: 14, fontWeight: FontWeight.w500)),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => setting_Screen()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: Text('Log Out',
                  style: GoogleFonts.roboto(
                      fontSize: 14, fontWeight: FontWeight.w500)),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => login_screen()));
              },
            ),
          ],
        ),
      ),
      body: Scaffold(
        body: Container(
          child: Column(
            children: [
              cardPesanan(),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
              ),
              SizedBox(
                height: 400,
              ),
              BottomAppBar(
                color: Colors.white,
                child: Row(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      "  Harga ",
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
                      width: 170,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => checkout_Screen()));
                        },
                        child: Text("Bayar"))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  // Widget buildCheckBox() => ListTile(
  //       leading: Checkbox(
  //         value: value,
  //         onChanged: (value) {
  //           setState(() {
  //             this.value = value;
  //           });
  //         },
  //       ),
  //     );
}
