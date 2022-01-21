import 'package:beutyme_app/login.dart';
import 'package:beutyme_app/pertanyaan5.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Pertanyaan6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
               Image(image: AssetImage('assets/bar6.png')),
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
                child: Text("Berapa jam anda tidur:", 
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
                          SizedBox(height:90),
                          Center(
                            child:Column(
                              children: [
                                Align(
                                  child: Image(image: AssetImage('assets/jam.png')),
                                ),
                                SizedBox(
                                  height: 23,
                                ),
                                SizedBox(
                                  width: 150,
                                  height: 31,
                                  child: TextField(
                                    obscureText: true,
                            
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 35),
                              //labelText: "ketik di sini: ",
                              hintText: "Ketik disini"
                            ),
                                  ),
                                  ),

                              ],
                            ) ,
                            
                          ),
                          
                        ],
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> login_screen()));
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
              ),
              
            ],
          ),
          ),
        ), 
        
        
          );
    
  }
}