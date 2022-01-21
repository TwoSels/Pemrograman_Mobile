import 'package:flutter/material.dart';
import 'package:beutyme_app/home.dart';

class catatan_malam extends StatefulWidget {
  catatan_malam({Key? key}) : super(key: key);

  @override
  _catatan_malamState createState() => _catatan_malamState();
}

class _catatan_malamState extends State<catatan_malam> {
  double _currentSliderValue = 20;
  double _currentSliderValue2 = 20;
  var isSelected = [false, true];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff96cdcd),
        title: Center(
          child: Text("Catatan Malam"),
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
      body: SingleChildScrollView(
        child: Container(
          //color: Color(0xff96cdcd),
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              SizedBox(
                  height: 110,
                  width: 400,
                  child: Card(
                    color: Colors.white,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text("Nilai untuk kulit saat ini"),
                        Slider(
                            value: _currentSliderValue,
                            max: 100,
                            divisions: 15,
                            onChanged: (double value) {
                              setState(() {
                                _currentSliderValue = value;
                              });
                            }),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Buruk"),
                            Text("Netral"),
                            Text("Baik"),
                            Text("Luar biasa")
                          ],
                        )
                      ],
                    ),
                  )),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 110,
                width: 400,
                child: Card(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Text("Lama waktu tidur"),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: 50,
                        child: Column(
                          children: [
                            TextField(
                              obscureText: false,
                              decoration: InputDecoration(hintText: "Ketuk"),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                  height: 110,
                  width: 400,
                  child: Card(
                    color: Colors.white,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text("Bagaimana perasaanmu pagi ini"),
                        Slider(
                            value: _currentSliderValue2,
                            max: 100,
                            divisions: 20,
                            onChanged: (double value) {
                              setState(() {
                                _currentSliderValue2 = value;
                              });
                            }),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Mengerikan"),
                            Text("Buruk"),
                            Text("Netral"),
                            Text("Baik"),
                            Text("Bagus")
                          ],
                        )
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
