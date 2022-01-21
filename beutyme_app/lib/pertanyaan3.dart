import 'package:beutyme_app/pertanyaan1.dart';
import 'package:beutyme_app/pertanyaan2.dart';
import 'package:beutyme_app/pertanyaan3.dart';
import 'package:beutyme_app/pertanyaan4.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Pertanyaan3 extends StatelessWidget {
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
               Image(image: AssetImage('assets/bar3.png')),
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
                child: Text("Jenis kulit:", 
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
                              child: Image(image:AssetImage('assets/normal.png')),
                            ),
                            GestureDetector(
                              child: Image(image: AssetImage('assets/berminsen.png')),
                            ),
                          ],),
                          SizedBox(height:10),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
                                children: [
                                  GestureDetector(
                                    child: Image(image: AssetImage('assets/kombinasi.png')),
                                  ),
                                  GestureDetector(
                                    child: Image(image: AssetImage('assets/kombinsen.png')),
                                  ),
                                ],),
                                SizedBox(height: 10,),
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                      GestureDetector(
                                        child: Image(image: AssetImage('assets/kering.png')),
                                      ),
                                      GestureDetector(
                                        child: Image(image: AssetImage('assets/kersen.png')),
                                      ),
                                    ],),
                                    SizedBox(height: 10,),
                                    Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                          GestureDetector(
                                            child: Image(image: AssetImage('assets/sensitif.png')),
                                          ),
                                          GestureDetector(
                                            child: Image(image: AssetImage('assets/gatau.png')),
                                          )
                                        ],)
                                      ],
                                    )
                                  ],
                                )
                            ],
                          ),
                           SizedBox(
                           height: 1,
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Pertanyaan4()));
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