import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class cardPesanan extends StatefulWidget {
  cardPesanan({Key? key}) : super(key: key);

  @override
  _cardPesananState createState() => _cardPesananState();
}

class _cardPesananState extends State<cardPesanan> {
  @override
  bool _ischecked = false;
  var heading = 'Toko ayam santuy';
  var subHeading = 'Bandung';
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 4.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: [
                Checkbox(
                  value: _ischecked,
                  activeColor: Colors.green,
                  checkColor: Colors.white,
                  onChanged: (value) {
                    setState(() {
                      _ischecked = !_ischecked;
                    });
                  },
                ),
                Text(
                  "Toko Ayam Santuy",
                  style: GoogleFonts.roboto(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  " di Bandung",
                  style: GoogleFonts.roboto(
                      fontSize: 12, fontWeight: FontWeight.normal),
                )
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: _ischecked,
                  activeColor: Colors.green,
                  checkColor: Colors.white,
                  onChanged: (value) {
                    setState(() {
                      _ischecked = !_ischecked;
                    });
                  },
                ),
                Image(image: AssetImage("assets/ayam2.png")),
                SizedBox(
                  width: 10,
                ),
                Text("Ayam = "),
                Text("Rp. 30.000")
              ],
            ),
            GestureDetector(
              onTap: () {},
              child: Image(image: AssetImage('assets/trash-can.png')),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}

class alamat extends StatefulWidget {
  alamat({Key? key}) : super(key: key);

  @override
  _alamatState createState() => _alamatState();
}

class _alamatState extends State<alamat> {
  @override
  var heading = 'Kosan Abal-abal';
  var subheading = 'Jono Sanuardi';
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            "Alamat Pengiriman",
            style:
                GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            title: Text("Kosan Abal-abal"),
            subtitle: Text("Jono Sanuardi"),
          ),
          SizedBox(),
          Row(
            children: [
              SizedBox(
                width: 12,
              ),
              Text("JL. Telekomunikasi, Universitas Telkom"),
            ],
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

class total extends StatefulWidget {
  total({Key? key}) : super(key: key);

  @override
  _totalState createState() => _totalState();
}

class _totalState extends State<total> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 4.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  "Toko Ayam Santuy",
                  style: GoogleFonts.roboto(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  " di Bandung",
                  style: GoogleFonts.roboto(
                      fontSize: 12, fontWeight: FontWeight.normal),
                )
              ],
            ),
            Row(
              children: [
                Image(image: AssetImage("assets/ayam2.png")),
                SizedBox(
                  width: 10,
                ),
                Text("Ayam = "),
                Text("Rp. 30.000")
              ],
            ),
            GestureDetector(
              onTap: () {},
              child: Image(image: AssetImage('assets/trash-can.png')),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}

class linkaja extends StatelessWidget {
  const linkaja({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 4.0,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Medode Pembayaran",
                  style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                TextButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) => Dialog(
                                child: Column(
                                  children: [
                                    IconButton(
                                        onPressed: () {
                                          showDialog(
                                              context: context,
                                              builder:
                                                  (BuildContext context) =>
                                                      Dialog(
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            SizedBox(
                                                              height: 20,
                                                            ),
                                                            GestureDetector(
                                                              onTap: () {
                                                                showDialog(
                                                                    context:
                                                                        context,
                                                                    builder: (BuildContext
                                                                            context) =>
                                                                        AlertDialog(
                                                                          title:
                                                                              Text("Ganti metode bayar?"),
                                                                          actions: [
                                                                            TextButton(
                                                                                onPressed: () {},
                                                                                child: Text("Ya")),
                                                                            TextButton(
                                                                                onPressed: () {
                                                                                  Navigator.pop(context, true);
                                                                                },
                                                                                child: Text("Tidak"))
                                                                          ],
                                                                        ));
                                                              },
                                                              child: Image(
                                                                  image: AssetImage(
                                                                      'assets/Mandiri_logo.png')),
                                                            ),
                                                            SizedBox(
                                                              height: 20,
                                                            ),
                                                            GestureDetector(
                                                              onTap: () {
                                                                showDialog(
                                                                    context:
                                                                        context,
                                                                    builder: (BuildContext
                                                                            context) =>
                                                                        AlertDialog(
                                                                          title:
                                                                              Text("Ganti metode bayar?"),
                                                                          actions: [
                                                                            TextButton(
                                                                                onPressed: () {},
                                                                                child: Text("Ya")),
                                                                            TextButton(
                                                                                onPressed: () {
                                                                                  Navigator.pop(context, true);
                                                                                },
                                                                                child: Text("Tidak"))
                                                                          ],
                                                                        ));
                                                              },
                                                              child: Image(
                                                                  image: AssetImage(
                                                                      'assets/bni.png')),
                                                            ),
                                                            SizedBox(
                                                              height: 20,
                                                            ),
                                                            GestureDetector(
                                                              onTap: () {
                                                                showDialog(
                                                                    context:
                                                                        context,
                                                                    builder: (BuildContext
                                                                            context) =>
                                                                        AlertDialog(
                                                                          title:
                                                                              Text("Ganti metode bayar?"),
                                                                          actions: [
                                                                            TextButton(
                                                                                onPressed: () {},
                                                                                child: Text("Ya")),
                                                                            TextButton(
                                                                                onPressed: () {
                                                                                  Navigator.pop(context, true);
                                                                                },
                                                                                child: Text("Tidak"))
                                                                          ],
                                                                        ));
                                                              },
                                                              child: Image(
                                                                  image: AssetImage(
                                                                      'assets/cimb_bank.png')),
                                                            ),
                                                          ],
                                                        ),
                                                      ));
                                        },
                                        icon: Icon(Icons.atm_sharp)),
                                    IconButton(
                                        onPressed: () {
                                          showDialog(
                                              context: context,
                                              builder: (BuildContext context) =>
                                                  AlertDialog(
                                                    title: Text("Ganti ke COD"),
                                                    actions: [
                                                      TextButton(
                                                          onPressed: () {
                                                            showDialog(
                                                                context:
                                                                    context,
                                                                builder: (BuildContext
                                                                        context) =>
                                                                    AlertDialog(
                                                                      title: Text(
                                                                          "Berhasil ganti ke cod"),
                                                                    ));
                                                          },
                                                          child: Text("Ya")),
                                                      TextButton(
                                                          onPressed: () {
                                                            Navigator.pop(
                                                                context, true);
                                                          },
                                                          child: Text("Tidak"))
                                                    ],
                                                  ));
                                        },
                                        icon:
                                            Icon(Icons.delivery_dining_rounded))
                                  ],
                                ),
                              ));
                    },
                    child: Text(
                      "Lihat semua",
                      style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ))
              ],
            ),
            Row(
              children: [
                Image(image: AssetImage('assets/linkaja.png')),
                SizedBox(
                  width: 60,
                ),
                Text(
                  "Link Aja",
                  style: GoogleFonts.roboto(
                      fontSize: 14, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
