import 'package:beutyme_app/pertanyaan2.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:beutyme_app/pengenalan_app.dart';
import 'package:google_fonts/google_fonts.dart';

class Pertanyaan1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        //automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>OnBoardingPage()));
          },
          child: Icon(Icons.arrow_back),
        ),
        backgroundColor: Colors.transparent, 
         title: Center(
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               SizedBox(
                 height: 22,
               ),
                // TextButton(onPressed: (){}, child: Text("kembali", style: TextStyle(
                // fontSize: 13,
                // fontWeight: FontWeight.w400,
                //   color: Colors.white
                // ),
                // ),
                // ),
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
                    height: 334,
                    width: 400,
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          TextField(
                            obscureText: true,
                            
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                              labelText: "Jenis Kelamin: ",
                              hintText: "Ketuk"
                            ),
                          ),
                          SizedBox(
                            height:65,
                          ),
                          TextField(
                            obscureText: true,
                            
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                              labelText: "Usia: ",
                              hintText: "Ketuk"
                            ),
                          ),
                          
                        ],
                      ),
                      
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  ElevatedButton(onPressed: ()=> Navigator.pushReplacement(context, 
                  MaterialPageRoute(builder: (context)=> Pertanyaan2())), 
                  child: Text("Selanjutnya", style: TextStyle(
                    color: Color(0xff05012F),
                    ),
                    ), 
                  style: ElevatedButton.styleFrom(
                    
                    primary: Colors.white, 
                    
                    shape: BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(3)))
                      ),)
                //   TextButton(
                //   style: ButtonStyle(
                //   foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                //  ),
                //   onPressed: () { },
                //     child: Text('Selanjutnya', style: TextStyle(
                //     color: Colors.black
                //     ),
                //    ),
                //   ),
                ],
              )
            ],
          ),
          ),
        ), 
        
        
          );
    
  }
}