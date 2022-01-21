import 'package:beutyme_app/pertanyaan1.dart';
import 'package:beutyme_app/pertanyaan3.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Pertanyaan2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        //automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
         title: Center(
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               SizedBox(
                 height: 22,
               ),
      //           TextButton(onPressed: (){}, child: Text("kembali", style: TextStyle(
      //           fontSize: 13,
      //           fontWeight: FontWeight.w400,
      //           color: Colors.white
      //           ),
      //           ),
      //           ),
               Image(image: AssetImage('assets/bar2.png')),
               SizedBox(
                 height: 20,
               ),
             ],
           ),
         ),
       ),
       extendBodyBehindAppBar: true,
        backgroundColor: Colors.deepPurpleAccent,
        body: SingleChildScrollView(
          child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 120,
              ),
              Align(
                alignment: Alignment.center,
                child: Text("Masalah kulit yang dialami:", 
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
                    height: 334,
                    width: 400,
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          SizedBox(height: 40,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                            GestureDetector(
                              child: Image(image:AssetImage('assets/bintikhitam.png')),
                              
                            ),
                            GestureDetector(
                              child: Image(image: AssetImage('assets/kulitkering.png')),
                            ),
                          ],),
                          SizedBox(height:10),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
                                children: [
                                  GestureDetector(
                                    child: Image(image: AssetImage('assets/jerawat.png')),
                                  ),
                                  GestureDetector(
                                    child: Image(image: AssetImage('assets/teksturkasar.png')),
                                  ),
                                ],),
                                SizedBox(height: 10,),
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                      GestureDetector(
                                        child: Image(image: AssetImage('assets/Kerutan.png')),
                                      ),
                                      GestureDetector(
                                        child: Image(image: AssetImage('assets/kusam.png')),
                                      ),
                                    ],)
                                  ],
                                )
                            ],
                          ),
                           SizedBox(
                           height: 35,
                          ),
                          TextField(
                            obscureText: true,
                            
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                              labelText: "lainnya: ",
                              hintText: "Ketuk"
                            ),
                          )
                        ],
                      ),
                    ),
                    
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Pertanyaan3()));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                    )
                  ), 
                  child: Text("Selanjutnya", style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w500
                  ),))
                ],
              )
            ],
          ),
          ),
        ), 
        
        
          );
    
  }
}