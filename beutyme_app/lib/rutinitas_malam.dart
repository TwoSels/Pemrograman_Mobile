import 'package:flutter/material.dart';
import 'package:beutyme_app/home.dart';

class rutinitas_malam extends StatefulWidget {
  rutinitas_malam({Key? key}) : super(key: key);

  @override
  _rutinitas_malamState createState() => _rutinitas_malamState();
}

class _rutinitas_malamState extends State<rutinitas_malam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff96cdcd),
        title: Center(
          child: Text("Rutinitas Malam"),
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
            )
          ],
        ),
      ),
    );
  }
}
