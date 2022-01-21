import 'package:flutter/material.dart';

class dolar_icon extends StatelessWidget {
  const dolar_icon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          SizedBox(
            height: 25,
          ),
          Image(image: AssetImage('assets/dolar_icon.png')),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment(-1, 10),
                    child: Text("My Wallet"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Stack(
                    children: [
                      Text("Rp.- 5.350.000"),
                    ],
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class top_up extends StatelessWidget {
  const top_up({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          SizedBox(
            height: 25,
          ),
          Image(image: AssetImage('assets/TU_icon.png')),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment(-1, 10),
                    child: Text("Top Up!"),
                  ),
                  Stack(
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white, minimumSize: Size(40, 20)),
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (_) => AlertDialog(
                                      title: Text('Coming Soon'),
                                    ));
                          },
                          child: Text(
                            "Now",
                            style: TextStyle(color: Colors.black),
                          ))
                    ],
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class pesawat_terbang extends StatelessWidget {
  const pesawat_terbang({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(),
    );
  }
}

class transaksi_card extends StatelessWidget {
  const transaksi_card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 60,
            width: 350,
            child: Card(
              color: Color(0xff81D3A7),
            ),
          )
        ],
      ),
    );
  }
}
