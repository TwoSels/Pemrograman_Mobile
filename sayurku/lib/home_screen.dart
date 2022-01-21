import 'package:flutter/material.dart';
import 'package:sayurku/cart_screen.dart';
import 'package:sayurku/daging_screen.dart';
import 'package:sayurku/login_screen.dart';
import 'package:sayurku/notification.dart';
import 'package:sayurku/profil_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sayurku/rempah_screen.dart';
import 'package:sayurku/sayur_screen.dart';
import 'package:sayurku/sembako_screen.dart';
import 'package:sayurku/setting_screen.dart';

class home_screen extends StatelessWidget {
  const home_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        iconTheme: IconThemeData(color: Colors.black),
        title: Container(
          child: Column(
            children: [
              TextField(
                obscureText: false,
                controller: _controller,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                  hintText: "Sini Cari aja",
                  suffixIcon: IconButton(
                    onPressed: _controller.clear,
                    icon: Icon(Icons.cancel),
                  ),
                ),
              ),
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
            ),
          ),
        ],
      ),
      drawer: Drawer(
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
                'Jono Sanuardi',
                textAlign: TextAlign.left,
                style: TextStyle(
                  height: 10,
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
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
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 71,
              ),
              Align(
                alignment: Alignment(-0.8, 0.1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Pengen Belanja Apa Hari Ini?",
                      style: GoogleFonts.roboto(
                          fontSize: 18, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    child: Image(image: AssetImage('assets/Sayur.png')),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => sayur_screen()));
                    },
                  ),
                  GestureDetector(
                    child: Image(image: AssetImage('assets/Rempah.png')),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => rempah_screen()));
                    },
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        child: Image(image: AssetImage('assets/Sembako.png')),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => sembako_screen()));
                        },
                      ),
                      GestureDetector(
                        child: Image(image: AssetImage('assets/Daging.png')),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => daging_screen()));
                        },
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 60,
              ),
              Center(
                  child: ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (_) => AlertDialog(
                            title: Center(
                              child: Text('Coming Soon'),
                            ),
                          ));
                },
                child: Text(
                  "Ingin Buka Toko? Klik Disini",
                  style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
                style: ElevatedButton.styleFrom(primary: Colors.white),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
