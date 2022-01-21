import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fylex/screen/login_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fylex/screen/home_screen.dart';
import 'package:fylex/screen/my_balance.dart';
import 'package:fylex/screen/account_screen.dart';

class setting_screen extends StatelessWidget {
  const setting_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff81D3A7),
        leading: Icon(Icons.settings),
        iconTheme: IconThemeData(color: Colors.black),
        title: Text("Setting",
            style: GoogleFonts.robotoCondensed(
              fontSize: 22,
              fontWeight: FontWeight.normal,
              color: Colors.black,
            )),
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
                    MaterialPageRoute(builder: (context) => account_screen()));
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
              leading: const Icon(Icons.logout),
              title: Text('Log Out',
                  style: GoogleFonts.roboto(
                      fontSize: 14, fontWeight: FontWeight.w500)),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => login_Screen()));
              },
            ),
          ],
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              "Account & Security",
              style: GoogleFonts.robotoCondensed(
                fontSize: 22,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              child: SizedBox(
                height: 40,
                width: 400,
                child: Container(
                  child: Card(
                    color: Color(0xff81D3A7),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Account Information",
                              style: GoogleFonts.robotoCondensed(
                                  fontSize: 22, fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              width: 60,
                            ),
                            Icon(Icons.keyboard_arrow_right_rounded),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                          title: Container(
                            child: Column(
                              children: [
                                Text("Rahmad Darmawan"),
                                Text("rahmad@gmail.com")
                              ],
                            ),
                          ),
                        ));
              },
            ),
            GestureDetector(
              child: SizedBox(
                height: 40,
                width: 400,
                child: Container(
                  child: Card(
                    color: Color(0xff81D3A7),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Password",
                              style: GoogleFonts.robotoCondensed(
                                  fontSize: 22, fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              width: 140,
                            ),
                            Icon(Icons.keyboard_arrow_right_rounded),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                          title: Container(
                            child: Column(
                              children: [
                                Text("**********"),
                              ],
                            ),
                          ),
                        ));
              },
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Preferences",
              style: GoogleFonts.robotoCondensed(
                  fontSize: 22,
                  fontWeight: FontWeight.normal,
                  color: Colors.black),
            ),
            GestureDetector(
              child: SizedBox(
                height: 40,
                width: 400,
                child: Container(
                  child: Card(
                    color: Color(0xff81D3A7),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Country",
                              style: GoogleFonts.robotoCondensed(
                                  fontSize: 22, fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              width: 150,
                            ),
                            Icon(Icons.keyboard_arrow_right_rounded),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                          title: Container(
                            child: Column(
                              children: [Text("Indonesia"), Text("Spanyol")],
                            ),
                          ),
                        ));
              },
            ),
            GestureDetector(
              child: SizedBox(
                height: 40,
                width: 400,
                child: Container(
                  child: Card(
                    color: Color(0xff81D3A7),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Language",
                              style: GoogleFonts.robotoCondensed(
                                  fontSize: 22, fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              width: 140,
                            ),
                            GestureDetector(
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (_) => AlertDialog(
                                            title: Container(
                                              child: Column(
                                                children: [
                                                  TextButton(
                                                      onPressed: () {
                                                        Navigator.pop(
                                                            context, true);
                                                      },
                                                      child: Column(
                                                        children: [
                                                          Text("Spanyol"),
                                                          Text("Belgium")
                                                        ],
                                                      )),
                                                ],
                                              ),
                                            ),
                                          ));
                                },
                                child: Text("English"))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              child: SizedBox(
                height: 40,
                width: 400,
                child: Container(
                  child: Card(
                    color: Color(0xff81D3A7),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "App Version",
                              style: GoogleFonts.robotoCondensed(
                                  fontSize: 22, fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              width: 140,
                            ),
                            GestureDetector(
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (_) => AlertDialog(
                                            title: Container(
                                              child: Column(
                                                children: [
                                                  TextButton(
                                                      onPressed: () {
                                                        Navigator.pop(
                                                            context, true);
                                                      },
                                                      child: Column(
                                                        children: [
                                                          Text("Spanyol"),
                                                          Text("Belgium")
                                                        ],
                                                      )),
                                                ],
                                              ),
                                            ),
                                          ));
                                },
                                child: Text("0.1")),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
