import 'package:flutter/material.dart';
import 'package:beutyme_app/home.dart';

class cekKulit_screen extends StatelessWidget {
  const cekKulit_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff96cdcd),
        title: Center(
          child: Text("Cek Kulit"),
        ),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>home_screen()));
          }, icon: Icon(Icons.cancel_outlined))
        ],
      ),
      body: Container(
        
        color: Color(0xff96cdcd),
        child: Center(
          child: GestureDetector(
            onTap: (){
              showDialog(context: context, builder: (BuildContext context)=>AlertDialog(
                title: Text("Segera"),
                content: Text("Masih dalam pengembangan"),
              ));
            },
            child: Image(image: AssetImage('assets/camera.png')),
          )),
        ),
      );
    
  }
}