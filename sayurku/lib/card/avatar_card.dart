import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class avatar extends StatelessWidget {
  const avatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Colors.green,
        Colors.greenAccent,
      ])),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/blank.png'),
          ),
          SizedBox(
            width: 30,
          ),
          Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "JONO SANUARDI",
                    style: GoogleFonts.roboto(
                        fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "jono_sanuardi@gmail.com",
                    style: GoogleFonts.roboto(
                        fontSize: 14, fontWeight: FontWeight.w300),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
