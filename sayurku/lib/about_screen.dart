import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sayurku/profil_screen.dart';

class tentang extends StatelessWidget {
  const tentang({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        leading: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => profil_screen()));
          },
          child: Icon(Icons.arrow_back),
        ),
        title: Text(
          "Tentang",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                "Pembuat Prototipe Sayurku (Haluyur 2.0)",
                style: GoogleFonts.roboto(
                    fontSize: 18, fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("assets/1.jpg"),
                ),
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/2.jpeg'),
                )
              ],
            ),
            Stack(
              children: [
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 35,
                    ),
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "M. Imam Whidyarto",
                                style: GoogleFonts.roboto(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "1103184089",
                                style: GoogleFonts.roboto(
                                    fontSize: 14, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Column(
                      children: <Widget>[
                        Align(
                          alignment: Alignment(0.8, -5),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "M. Farhan Ardhi Nugraha",
                                style: GoogleFonts.roboto(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "1103184067",
                                style: GoogleFonts.roboto(
                                    fontSize: 14, fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            SizedBox(
                height: 50,
                width: 100,
                child: GestureDetector(
                  child: Card(
                    color: Colors.green,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Contact Us",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    showModalBottomSheet<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          height: 200,
                          color: Colors.white,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                const Text(
                                  'E-mail',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context, true);
                                    },
                                    child: Column(
                                      children: [
                                        Text(
                                            "mimamw@student.telkomuniversity.ac.id"),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                            "mfardho@student.telkomuniversity.ac.id")
                                      ],
                                    ))
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                ))
          ],
        ),
      ),
    );
  }
}
