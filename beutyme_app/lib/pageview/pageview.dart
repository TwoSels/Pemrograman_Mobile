import 'package:beutyme_app/pageview/pageone.dart';
import 'package:beutyme_app/pengenalan_app.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:beutyme_app/pageview/pageone.dart';
import 'package:beutyme_app/pageview/pagetwo.dart';
import 'package:beutyme_app/pageview/pagethree.dart';
import 'package:beutyme_app/pageview/pagefour.dart';
import 'package:beutyme_app/pageview/pagefive.dart';
import 'package:beutyme_app/pageview/pagesix.dart';

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<Widget> pages=[PageOne(),PageTwo(),PageThree(),PageFour(),PageFive(),PageSix()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Container(
      //     child: Column(
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //         SizedBox(
      //           height: 22,
      //         ),
      //         // TextButton(onPressed: (){}, child: Text("kembali", style: TextStyle(
      //         //   fontSize: 13,
      //         //   fontWeight: FontWeight.w400,
      //         //   color: Colors.white
      //         // ),
      //         // ),
      //         // ),
      //         Image(image: AssetImage('assets/Bar1.png')),
      //         SizedBox(
      //           height: 20,
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      
      body: PageView.builder(
        itemCount: pages.length,
        itemBuilder: (context, position) => pages[position],
      ),
    );
  }
}