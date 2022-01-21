import 'package:beutyme_app/google_login.dart';
import 'package:beutyme_app/telepon.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class login_screen extends StatelessWidget {
  const login_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        color: Color(0xff96cdcd),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center ,
            children: <Widget>[
              SizedBox(
                height: 40,
                width: 214,
                child: Card(
                  color: Colors.white,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>google_login()));
                        },
                        child: Row(
                          children: [
                            Image(image: AssetImage('assets/google.png')),
                            Text("Login dengan Google")
                          ],
                        ),
                      )
                      
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text("atau",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Colors.black
              )
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 40,
                width: 214,
                child: Card(
                  color: Colors.white,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>add_telepon()));
                        },
                        child: Row(
                          children: [
                            SizedBox(
                              width: 5,
                            ),
                            Icon(Icons.call),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Login dengan No.Telepon")
                          ],
                        ),
                      )
                      
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}