import 'package:flutter/material.dart';
import 'package:fylex/components/komponen.dart';
import 'package:fylex/screen/buy_screen.dart';
import 'package:fylex/screen/my_balance.dart';
import 'package:fylex/screen/my_ticket.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fylex/screen/setting_screen.dart';
import 'package:fylex/screen/login_screen.dart';
import 'package:fylex/screen/account_screen.dart';

class home_screen extends StatelessWidget {
  const home_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff81D3A7),
        title: TextField(
          obscureText: false,
          controller: _controller,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            hintText: "Search!",
            fillColor: Color(0xffFFFFFF),
            suffixIcon: IconButton(
                onPressed: _controller.clear, icon: Icon(Icons.cancel)),
          ),
        ),
        actions: [
          // GestureDetector(
          //   onTap: () {
          //     Navigator.push(context,
          //         MaterialPageRoute(builder: (context) => setting_screen()));
          //   },
          //   child: Image(image: AssetImage('assets/setting.png')),
          // ),
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => setting_screen()));
              },
              icon: Icon(
                Icons.settings,
                color: Colors.black,
              ))
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
              leading: Icon(Icons.settings),
              title: Text('Settings',
                  style: GoogleFonts.roboto(
                      fontSize: 14, fontWeight: FontWeight.w500)),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => setting_screen()));
              },
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 100,
              width: 400,
              child: Card(
                color: Color(0xff81D3A7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => balance_Screen()));
                      },
                      child: dolar_icon(),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    top_up()
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => buy_tickets()));
                    },
                    child: SizedBox(
                      height: 60,
                      width: 150,
                      child: Card(
                        color: Color(0xff81D3A7),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Buy Tickets"),
                            SizedBox(
                              width: 10,
                            ),
                            Image(
                                image: AssetImage('assets/pesawat_terbang.png'))
                          ],
                        ),
                      ),
                    )),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => my_ticket()));
                  },
                  child: SizedBox(
                    height: 60,
                    width: 150,
                    child: Container(
                      child: Card(
                        color: Color(0xff81D3A7),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(image: AssetImage('assets/tiked.png')),
                            SizedBox(
                              width: 10,
                            ),
                            Text("My Tickets"),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => account_screen()));
                      },
                      child: SizedBox(
                        height: 60,
                        width: 150,
                        child: Card(
                          color: Color(0xff81D3A7),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("My Account"),
                              SizedBox(
                                width: 10,
                              ),
                              Image(image: AssetImage('assets/akun.png')),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 100,
                ),
                Center(
                  child: Image(image: AssetImage('assets/logo.png')),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
