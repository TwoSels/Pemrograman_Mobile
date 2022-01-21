import 'package:beutyme_app/ambil_gambar.dart';
import 'package:beutyme_app/catatan_malam.dart';
import 'package:beutyme_app/catatan_pagi.dart';
import 'package:beutyme_app/cek_kulit.dart';
import 'package:beutyme_app/komponen/komponen.dart';
import 'package:beutyme_app/login.dart';
import 'package:beutyme_app/notification.dart';
import 'package:beutyme_app/rutinitas_malam.dart';
import 'package:beutyme_app/rutinitas_pagi.dart';
import 'package:beutyme_app/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:calendar_calendar/calendar_calendar.dart';

class home_screen extends StatelessWidget {
  const home_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
              backgroundColor: Color(0xff96cdcd),
              leading: Image(image: AssetImage('assets/hiya.png')),
              title: Text("Dewi Nisya"),
              actions: [
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => notification_screen()));
                    },
                    icon: Icon(Icons.notifications)),
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => setting_screen()));
                    },
                    icon: Icon(Icons.settings))
              ],
              bottom: TabBar(tabs: <Widget>[
                Tab(
                  text: ("Catatan"),
                ),
                Tab(
                  text: "Postingan",
                )
              ])),
          body: TabBarView(children: <Widget>[
            Container(
              color: Color(0xff96cdcd),
              child: Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                        height: 150,
                        width: 350,
                        child: SingleChildScrollView(
                          child: Calendar(
                            weekendOpacityEnable: true,
                            previous: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(500),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey[300]!,
                                        spreadRadius: 1.5,
                                        blurRadius: 5,
                                        offset: Offset(2.0, 0.0))
                                  ]),
                              child: CircleAvatar(
                                radius: 14,
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  size: 16,
                                  color: Colors.orange,
                                ),
                              ),
                            ),
                            next: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(500),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey[300]!,
                                        spreadRadius: 1.5,
                                        blurRadius: 5,
                                        offset: Offset(2.0, 0.0))
                                  ]),
                              child: CircleAvatar(
                                radius: 14,
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 16,
                                  color: Colors.orange,
                                ),
                              ),
                            ),
                            space: 10,
                            onSelected: print,
                            backgroundColor: Colors.black,
                            activeColor: Color(0xffF97C65),
                            textStyleDays: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.white),
                            textStyleWeekDay: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                            titleStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                            selectedStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          child: SizedBox(
                            height: 50,
                            width: 300,
                            child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Text(
                                    "Cek Kulit",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black),
                                  ),
                                )),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => cekKulit_screen()));
                          },
                        ),
                        GestureDetector(
                          child: SizedBox(
                            height: 50,
                            width: 300,
                            child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Text(
                                    "Catatan Pagi",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black),
                                  ),
                                )),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => catatan_pagi()));
                          },
                        ),
                        GestureDetector(
                          child: SizedBox(
                            height: 50,
                            width: 300,
                            child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Text(
                                    "Catatan Malam",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black),
                                  ),
                                )),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => catatan_malam()));
                          },
                        ),
                        GestureDetector(
                          child: SizedBox(
                            height: 50,
                            width: 300,
                            child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Text(
                                    "Ambil Gambar",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black),
                                  ),
                                )),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ambil_gambar()));
                          },
                        ),
                        GestureDetector(
                          child: SizedBox(
                            height: 50,
                            width: 300,
                            child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Text(
                                    "Rutinitas Pagi",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black),
                                  ),
                                )),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => rutinitas_pagi()));
                          },
                        ),
                        GestureDetector(
                          child: SizedBox(
                            height: 50,
                            width: 300,
                            child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: Text(
                                    "Rutinitas Malam",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black),
                                  ),
                                )),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => rutinitas_malam()));
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
                color: Color(0xff96cdcd),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      emina(),
                      SizedBox(
                        height: 10,
                      ),
                      the_ordinary(),
                      SizedBox(
                        height: 10,
                      ),
                      wardah(),
                      SizedBox(
                        height: 10,
                      ),
                      emina(),
                      SizedBox(
                        height: 10,
                      ),
                      wardah(),
                      SizedBox(
                        height: 10,
                      ),
                      the_ordinary()
                    ],
                  ),
                ))
          ]),
        ),
      ),
    );
  }
}
