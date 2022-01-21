import 'package:flutter/material.dart';
import 'package:sayurku/cart_screen.dart';
import 'package:sayurku/home_screen.dart';
import 'package:sayurku/nav.dart';
import 'package:sayurku/notification.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sayurku/login_screen.dart';

class sayur_screen extends StatelessWidget {
  const sayur_screen({Key? key}) : super(key: key);

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
                  hintText: "Cari di sayur",
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
          // IconButton(
          //     onPressed: () {
          //       Navigator.push(context,
          //           MaterialPageRoute(builder: (context) => home_screen()));
          //     },
          //     icon: Icon(Icons.home)),
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
              )),
        ],
      ),
      // drawer: Drawer(
      //   child: ListView(
      //     padding: EdgeInsets.zero,
      //     children: <Widget>[
      //       DrawerHeader(
      //         decoration: BoxDecoration(
      //           image: DecorationImage(
      //             image: AssetImage("assets/blank.png"),
      //             fit: BoxFit.cover,
      //           ),
      //           //color: Colors.green,
      //         ),
      //         child: Text(
      //           'Rahmad Darmawan',
      //           textAlign: TextAlign.left,
      //           style: TextStyle(
      //             height: 10,
      //             color: Colors.white,
      //             fontSize: 14,
      //           ),
      //         ),
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.home),
      //         title: Text(
      //           'Home',
      //           style: GoogleFonts.roboto(
      //               fontSize: 14, fontWeight: FontWeight.w500),
      //         ),
      //         onTap: () {
      //           Navigator.push(context,
      //               MaterialPageRoute(builder: (context) => home_screen()));
      //         },
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.account_circle),
      //         title: Text(
      //           'Profile',
      //           style: GoogleFonts.roboto(
      //               fontSize: 14, fontWeight: FontWeight.w500),
      //         ),
      //         onTap: () {},
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.help),
      //         title: Text(
      //           'Help',
      //           style: GoogleFonts.roboto(
      //               fontSize: 14, fontWeight: FontWeight.w500),
      //         ),
      //         onTap: () {},
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.settings),
      //         title: Text('Settings',
      //             style: GoogleFonts.roboto(
      //                 fontSize: 14, fontWeight: FontWeight.w500)),
      //         onTap: () {},
      //       ),
      //       ListTile(
      //         leading: const Icon(Icons.logout),
      //         title: Text('Log Out',
      //             style: GoogleFonts.roboto(
      //                 fontSize: 14, fontWeight: FontWeight.w500)),
      //         onTap: () {
      //           Navigator.push(context,
      //               MaterialPageRoute(builder: (context) => login_screen()));
      //         },
      //       ),
      //     ],
      //   ),
      // ),
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
                    "Produk Sayur",
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
                  child: Image(image: AssetImage('assets/produk_sayur1.png')),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Image(image: AssetImage('assets/produk_sayur2.png')),
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
                      child:
                          Image(image: AssetImage('assets/produk_sayur3.png')),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child:
                          Image(image: AssetImage('assets/produk_sayur4.png')),
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
