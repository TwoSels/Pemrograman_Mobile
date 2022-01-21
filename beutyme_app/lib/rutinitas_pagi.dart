import 'package:flutter/material.dart';
import 'package:beutyme_app/home.dart';

class rutinitas_pagi extends StatefulWidget {
  rutinitas_pagi({Key? key}) : super(key: key);

  @override
  _rutinitas_pagiState createState() => _rutinitas_pagiState();
}

class _rutinitas_pagiState extends State<rutinitas_pagi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff96cdcd),
        title: Center(
          child: Text("Rutinitas Pagi"),
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
              children: [
                SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  child: CircleAvatar(
                    minRadius: 20,
                    maxRadius: 45,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.add_outlined),
                  ),
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                              title: Text("Buka Kamera"),
                            ));
                  },
                ),
                SizedBox(
                  width: 50,
                ),
                Text(
                  "Pembersih",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  child: CircleAvatar(
                    minRadius: 20,
                    maxRadius: 45,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.add_outlined),
                  ),
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                              title: Text("Buka Kamera"),
                            ));
                  },
                ),
                SizedBox(
                  width: 50,
                ),
                Text(
                  "Toner",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  child: CircleAvatar(
                    minRadius: 20,
                    maxRadius: 45,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.add_outlined),
                  ),
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                              title: Text("Buka Kamera"),
                            ));
                  },
                ),
                SizedBox(
                  width: 50,
                ),
                Text(
                  "Serum",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  child: CircleAvatar(
                    minRadius: 20,
                    maxRadius: 45,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.add_outlined),
                  ),
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                              title: Text("Buka Kamera"),
                            ));
                  },
                ),
                SizedBox(
                  width: 50,
                ),
                Text(
                  "Pemlembab",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  child: CircleAvatar(
                    minRadius: 20,
                    maxRadius: 45,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.add_outlined),
                  ),
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                              title: Text("Buka Kamera"),
                            ));
                  },
                ),
                SizedBox(
                  width: 50,
                ),
                Text(
                  "Tabir Surya Wajah",
                  style: TextStyle(color: Colors.white),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
