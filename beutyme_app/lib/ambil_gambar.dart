import 'package:flutter/material.dart';
import 'package:beutyme_app/home.dart';

class ambil_gambar extends StatefulWidget {
  ambil_gambar({Key? key}) : super(key: key);

  @override
  _ambil_gambarState createState() => _ambil_gambarState();
}

class _ambil_gambarState extends State<ambil_gambar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff96cdcd),
        title: Center(
          child: Text("Ambil Gambar"),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => home_screen()));
              },
              icon: Icon(Icons.cancel_rounded))
        ],
      ),
      backgroundColor: Color(0xff96cdcd),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                                title: Text("Buka Kamera"),
                              ));
                    },
                    child: Column(
                      children: [
                        CircleAvatar(
                          minRadius: 20,
                          maxRadius: 45,
                          backgroundColor: Colors.white,
                          child: Icon(Icons.add_outlined),
                        ),
                        Stack(
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Kiri",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    )),
                GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                                title: Text("Buka Kamera"),
                              ));
                    },
                    child: Column(
                      children: [
                        CircleAvatar(
                          minRadius: 20,
                          maxRadius: 45,
                          backgroundColor: Colors.white,
                          child: Icon(Icons.add_outlined),
                        ),
                        Stack(
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Depan",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    )),
                GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                                title: Text("Buka Kamera"),
                              ));
                    },
                    child: Column(
                      children: [
                        CircleAvatar(
                          minRadius: 20,
                          maxRadius: 45,
                          backgroundColor: Colors.white,
                          child: Icon(Icons.add_outlined),
                        ),
                        Stack(
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Kanan",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    )),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                            title: Text("Buka Kamera"),
                          ));
                },
                child: Column(
                  children: [
                    CircleAvatar(
                      minRadius: 20,
                      maxRadius: 45,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.add_outlined),
                    ),
                    Stack(
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Area Leher",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                )),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment(-0.6, 0),
              child: Text(
                "Catatan tambahan: ",
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 100,
              width: 300,
              child: Card(
                color: Colors.white,
                child: TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: "ketik disini",
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
