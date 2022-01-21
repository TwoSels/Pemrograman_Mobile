import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sayurku/home_screen.dart';
import 'package:sayurku/home_screen.dart';
import 'package:sayurku/cart_screen.dart';
import 'package:sayurku/notification.dart';
import 'package:sayurku/login_screen.dart';

class sembako_screen extends StatelessWidget {
  const sembako_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Container(
          child: Column(
            children: [
              TextField(
                obscureText: false,
                controller: _controller,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                  hintText: "Cari di sembako",
                  suffixIcon: IconButton(
                      onPressed: _controller.clear, icon: Icon(Icons.cancel)),
                ),
              ),
              //Icon(Icons.notification_add)
            ],
          ),
        ),
        backgroundColor: Colors.white,
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
              icon: Icon(
                Icons.notifications,
                color: Colors.black,
              ))
        ],
      ),
      //
      body: SingleChildScrollView(
        child: Container(
            child: Column(
          children: [
            Align(
              alignment: Alignment(-0.8, 0.1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 33,
                  ),
                  Text(
                    "Produk Sembako",
                    style: GoogleFonts.roboto(
                        fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Image(image: AssetImage('assets/produk_sembako1.png')),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Image(image: AssetImage('assets/produk_sembako2.png')),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Image(
                          image: AssetImage('assets/produk_sembako3.png')),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Image(
                          image: AssetImage('assets/produk_sembako4.png')),
                    )
                  ],
                )
              ],
            )
          ],
        )),
      ),
    );
  }
}
