import 'package:beutyme_app/home.dart';
import 'package:flutter/material.dart';
import 'package:beutyme_app/login.dart';

class add_telepon extends StatelessWidget {
  const add_telepon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff96cdcd),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 300,
            width: 350,
            child: Card(
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  
                  Text("Login dengan No. Telepon", 
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child:Text("No.Telepon"), 
                  ),
                  TextField(
                    obscureText: false,
                    decoration: InputDecoration(  
                    ),
                  ),
                  SizedBox( 
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child:Text("Nama"), 
                  ),
                  TextField(
                    obscureText: false,
                  ),
                  
                  SizedBox(
                    height: 40,
                  ),
                  
                ],
              ),
            ),
          ),
          ElevatedButton(onPressed: ()=> Navigator.pushReplacement(context, 
                  MaterialPageRoute(builder: (context)=> home_screen())), 
                  child: Text("Selanjutnya", style: TextStyle(
                    color: Color(0xff05012F),
                    ),
                    ), 
                  style: ElevatedButton.styleFrom(
                    
                    primary: Colors.white, 
                    
                    shape: BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(3)))
                      ),)
        ],
      ),
    );
  }
}