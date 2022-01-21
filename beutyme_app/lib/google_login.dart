import 'package:beutyme_app/home.dart';
import 'package:flutter/material.dart';
import 'package:beutyme_app/login.dart';

class google_login extends StatelessWidget {
  const google_login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff96cdcd),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 350,
            width: 350,
            child: Card(
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Image(image: AssetImage('assets/google_2.png')),
                  Text("PILIH AKUN", style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400
                  ),),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Untuk Melanjutkan ke login", 
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.person),
                      Text("alexandra.louwi@gmail.com",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                      ),
                      )
                    ],
                  ),
                  onTap: (){
                    showDialog(
                      context: context,
                      builder: (_) => AlertDialog(
                      title: Text('Anda Memilih akun :'),
                      content: Text("alexandra.louwi@gmail.com"),
                      )
                    );
                  },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.person),
                      Text("steffya879@gmail.com",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                      ),
                      )
                    ],
                  ),
                  onTap: (){
                    showDialog(
                      context: context,
                      builder: (_) => AlertDialog(
                      title: Text('Anda Memilih akun :'),
                      content: Text("steffya879@gmail.com "),
                      )
                    );
                  },
                ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.person_add),
                      Text("Tambahkan akun lain",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400
                      ),
                      ),
                    ],
                  ),
                  ),
                  
                  SizedBox(
                    height: 40,
                  ),
                  Text("untuk melanjutkan, Google akan  "),
                  Text(" membagikan nama, alamat email,"),
                  Text("dan gambar profil Anda ke login_google.")
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