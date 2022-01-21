import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
 
class PageSix extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Container( child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               SizedBox(
                 height: 22,
               ),
      //           TextButton(onPressed: (){}, child: Text("kembali", style: TextStyle(
      //           fontSize: 13,
      //  fontWeight: FontWeight.w400,
      //             color: Colors.white
      //           ),
      //           ),
      //           ),
               Image(image: AssetImage('assets/bar6.png')),
               SizedBox(
                 height: 20,
               ),
             ],
           ),
        ),),
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.deepPurpleAccent,
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 120,
              ),
              Align(
                alignment: Alignment.center,
                child: Text("Berapa jam anda tidur:", 
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.white
                )
                ),
              ),
            ]
        ),
        ),
    );
  }
}
