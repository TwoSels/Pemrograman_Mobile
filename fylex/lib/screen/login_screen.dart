import 'package:flutter/material.dart';
import 'package:fylex/screen/register_screen.dart';
import 'package:fylex/screen/home_screen.dart';
import 'package:fylex/widget/CustomWidget.dart';
import 'package:google_fonts/google_fonts.dart';

class login_Screen extends StatelessWidget {
  const login_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildBox(
                  child: Column(
                children: [
                  Image(image: AssetImage('assets/logo.png')),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Username/Email",
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Password",
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xff81D3A7), minimumSize: Size(150, 40)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => home_screen()));
                    },
                    child: Text(
                      "Login",
                      style: GoogleFonts.robotoCondensed(
                          color: Color(0xff4D4D4D),
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xff81D3A7), minimumSize: Size(150, 40)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => register_screen()));
                    },
                    child: Text(
                      "Register",
                      style: GoogleFonts.robotoCondensed(
                          color: Color(0xff4D4D4D),
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
