import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sayurku/about_screen.dart';
import 'package:sayurku/card/avatar_card.dart';
import 'package:sayurku/home_screen.dart';
import 'package:sayurku/cart_screen.dart';
import 'package:sayurku/info_pribadi.dart';
import 'package:sayurku/login_screen.dart';
import 'package:sayurku/notification.dart';
import 'package:sayurku/setting_screen.dart';

class profil_screen extends StatelessWidget {
  const profil_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        leading: GestureDetector(
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => home_screen()));
          },
        ),
        backgroundColor: Colors.white,
        title: Text(
          "Akun",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => cart_screen()));
              },
              icon: Icon(Icons.shopping_cart_outlined)),
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => notification_screen()));
            },
            icon: Icon(Icons.notifications),
            color: Colors.black,
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              avatar(),
              Align(
                alignment: Alignment(-0.8, 0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      child: Card(
                          borderOnForeground: false,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(11),
                          ),
                          color: Colors.white,
                          child: Container(
                            height: 35,
                            width: 212,
                            child: Center(
                              child: Text("Informasi Pribadi"),
                            ),
                          )),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => info_pribadi()));
                      },
                    ),
                    GestureDetector(
                      child: Card(
                          borderOnForeground: false,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(11),
                          ),
                          color: Colors.white,
                          child: Container(
                            height: 35,
                            width: 212,
                            child: Center(
                              child: Text("Buka Toko"),
                            ),
                          )),
                      onTap: () {
                        Navigator.pop(context, true);
                      },
                    ),
                    GestureDetector(
                      child: Card(
                          borderOnForeground: false,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(11),
                          ),
                          color: Colors.white,
                          child: Container(
                            height: 35,
                            width: 212,
                            child: Center(
                              child: Text("Tentang"),
                            ),
                          )),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => tentang()));
                      },
                    ),
                    GestureDetector(
                      child: Card(
                          borderOnForeground: false,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(11),
                          ),
                          color: Colors.white,
                          child: Container(
                            height: 35,
                            width: 212,
                            child: Center(
                              child: Text("Keluar"),
                            ),
                          )),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => login_screen()));
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
