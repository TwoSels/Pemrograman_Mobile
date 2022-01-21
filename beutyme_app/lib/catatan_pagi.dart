import 'dart:ffi';
import 'package:beutyme_app/home.dart';
import 'package:flutter/material.dart';

class catatan_pagi extends StatefulWidget {
  catatan_pagi({Key? key}) : super(key: key);

  @override
  _catatan_pagiState createState() => _catatan_pagiState();
}

class _catatan_pagiState extends State<catatan_pagi> {
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
          child: Text("Catatan Pagi"),
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
      body: Container(
        color: Color(0xff96cdcd),
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
                          divisions: 5,
                          onChanged: (double value) {
                            setState(() {
                              _currentSliderValue = value;
                            });
                          }),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Tidak baik"),
                          Text("Normal"),
                          Text("Bagus")
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
                    Text("Kondisi Kulit"),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          child:
                              Image(image: AssetImage('assets/Bar_normal.png')),
                          onTap: () {
                            Navigator.pop(context, true);
                          },
                        ),
                        GestureDetector(
                          child: Image(
                              image: AssetImage('assets/Bar_iritasi.png')),
                          onTap: () {
                            Navigator.pop(context, true);
                          },
                        ),
                        GestureDetector(
                          child:
                              Image(image: AssetImage('assets/Bar_kering.png')),
                          onTap: () {
                            Navigator.pop(context, true);
                          },
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          child: Image(
                              image: AssetImage('assets/Bar_berminyak.png')),
                          onTap: () {},
                        ),
                        Image(image: AssetImage('assets/Bar_kusam.png')),
                        Image(image: AssetImage('assets/Bar_Gatal.png'))
                      ],
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
    );
  }
}
