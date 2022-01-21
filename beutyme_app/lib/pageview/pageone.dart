import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
         title: Container(
           child: Column(
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
               Image(image: AssetImage('assets/Bar1.png')),
               SizedBox(
                 height: 20,
               ),
             ],
           ),
         ),
       ),
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
                child: Text("Silahkan lengkapi data berikut:", 
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.white
                )
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Column(
                children: [
                  SizedBox(
                    height: 390,
                    width: 400,
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          TextField(
                            obscureText: true,
                            
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                              labelText: "Jenis Kelamin: ",
                              hintText: "Ketuk"
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          ),
        
          );
    
  }
}