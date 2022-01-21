import 'package:flutter/material.dart';

class emina extends StatelessWidget {
  const emina({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            SizedBox(
              width: 400,
              height: 150,
              child: Card(
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment(-0.9,0),
                      child: Text("Emina"),
                    ),
                    
                    Image(image: AssetImage('assets/emina.png'))
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(onPressed: (){
                  showDialog(context: context, builder: (BuildContext context)=> AlertDialog(
                    title: Text("Liked"),
                  ));
                }, icon: Icon(Icons.thumb_up)),
                
                IconButton(onPressed: (){
                  showDialog(context: context, builder: (BuildContext context)=> Dialog(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.person),
                            SizedBox(
                              width: 5,
                            ),
                            Text("Asnawi"),
                          ],
                        ),
                        Stack(
                          children: [
                            Align(
                              alignment: Alignment(-0.7,0),
                              child:Text("Aku suka produk ini"),
                            )
                            
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.person),
                            SizedBox(
                              width: 5,
                            ),
                            Text("Arhan"),
                          ],
                        ),
                        Stack(
                          children: [
                            Align(
                              alignment: Alignment(-0.7,0),
                              child:Text("Produk ini keren"),
                            )
                            
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.person),
                            SizedBox(
                              width: 5,
                            ),
                            Text("Naruto"),
                          ],
                        ),
                        Stack(
                          children: [
                            Align(
                              alignment: Alignment(-0.5,0),
                              child:Text("lumayan untuk melawan madara"),
                            )
                            
                          ],
                        ),
                      ],
                    ),
                  ));
                }, icon: Icon(Icons.comment_rounded)),
                IconButton(onPressed: (){
                  showDialog(context: context, builder: (BuildContext context)=>
                  Dialog(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          onPressed: (){
                          showDialog(context: context, builder: (BuildContext context)=>AlertDialog(
                            title: Text("Anda telah menyalin link produk"),
                          ));
                        }, icon: Icon(Icons.insert_link)),
                        IconButton(
                          onPressed: (){
                          showDialog(context: context, builder: (BuildContext context)=> AlertDialog(
                            title: Text("Anda telah membagikan ke email"),
                          ));
                        }, icon: Icon(Icons.email)),
                        IconButton(
                          onPressed: (){
                          showDialog(context: context, builder: (BuildContext context)=>AlertDialog(
                            title: Text("Anda telah membagikan melalui nomor"),
                          ));
                        }, icon: Icon(Icons.sms))
                      ],
                    ),
                  ));
                }, icon: Icon(Icons.share_rounded))
              ],
            )
          ],
        ),
      ),
    );
  }
}

class the_ordinary extends StatelessWidget {
  const the_ordinary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Center(
        child: Column(
          children: [
            SizedBox(
              width: 400,
              height: 150,
              child: Card(
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment(-0.9,0),
                      child: Text("The Ordinary"),
                    ),
                    
                    Image(image: AssetImage('assets/the_ordinary.png'))
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(onPressed: (){
                  showDialog(context: context, builder: (BuildContext context)=> AlertDialog(
                    title: Text("Liked"),
                  ));
                }, icon: Icon(Icons.thumb_up)),
                
                IconButton(onPressed: (){
                  showDialog(context: context, builder: (BuildContext context)=> Dialog(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.person),
                            SizedBox(
                              width: 5,
                            ),
                            Text("Asnawi"),
                          ],
                        ),
                        Stack(
                          children: [
                            Align(
                              alignment: Alignment(-0.7,0),
                              child:Text("Aku suka produk ini"),
                            )
                            
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.person),
                            SizedBox(
                              width: 5,
                            ),
                            Text("Arhan"),
                          ],
                        ),
                        Stack(
                          children: [
                            Align(
                              alignment: Alignment(-0.7,0),
                              child:Text("Produk ini keren"),
                            )
                            
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.person),
                            SizedBox(
                              width: 5,
                            ),
                            Text("Naruto"),
                          ],
                        ),
                        Stack(
                          children: [
                            Align(
                              alignment: Alignment(-0.5,0),
                              child:Text("lumayan untuk melawan madara"),
                            )
                            
                          ],
                        ),
                      ],
                    ),
                  ));
                }, icon: Icon(Icons.comment_rounded)),
                IconButton(onPressed: (){
                  showDialog(context: context, builder: (BuildContext context)=>
                  Dialog(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          onPressed: (){
                          showDialog(context: context, builder: (BuildContext context)=>AlertDialog(
                            title: Text("Anda telah menyalin link produk"),
                          ));
                        }, icon: Icon(Icons.insert_link)),
                        IconButton(
                          onPressed: (){
                          showDialog(context: context, builder: (BuildContext context)=> AlertDialog(
                            title: Text("Anda telah membagikan ke email"),
                          ));
                        }, icon: Icon(Icons.email)),
                        IconButton(
                          onPressed: (){
                          showDialog(context: context, builder: (BuildContext context)=>AlertDialog(
                            title: Text("Anda telah membagikan melalui nomor"),
                          ));
                        }, icon: Icon(Icons.sms))
                      ],
                    ),
                  ));
                }, icon: Icon(Icons.share_rounded))
              ],
            )
          ],
        ),
      ),
    );
  }
}

class wardah extends StatelessWidget {
  const wardah({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Center(
        child: Column(
          children: [
            SizedBox(
              width: 400,
              height: 150,
              child: Card(
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment(-0.9,0),
                      child: Text("Wardah"),
                    ),
                    
                    Image(image: AssetImage('assets/wardah.png'))
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(onPressed: (){
                  showDialog(context: context, builder: (BuildContext context)=> AlertDialog(
                    title: Text("Liked"),
                  ));
                }, icon: Icon(Icons.thumb_up)),
                
                IconButton(onPressed: (){
                  showDialog(context: context, builder: (BuildContext context)=> Dialog(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.person),
                            SizedBox(
                              width: 5,
                            ),
                            Text("Asnawi"),
                          ],
                        ),
                        Stack(
                          children: [
                            Align(
                              alignment: Alignment(-0.7,0),
                              child:Text("Aku suka produk ini"),
                            )
                            
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.person),
                            SizedBox(
                              width: 5,
                            ),
                            Text("Arhan"),
                          ],
                        ),
                        Stack(
                          children: [
                            Align(
                              alignment: Alignment(-0.7,0),
                              child:Text("Produk ini keren"),
                            )
                            
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.person),
                            SizedBox(
                              width: 5,
                            ),
                            Text("Naruto"),
                          ],
                        ),
                        Stack(
                          children: [
                            Align(
                              alignment: Alignment(-0.5,0),
                              child:Text("lumayan untuk melawan madara"),
                            )
                            
                          ],
                        ),
                      ],
                    ),
                  ));
                }, icon: Icon(Icons.comment_rounded)),
                IconButton(onPressed: (){
                  showDialog(context: context, builder: (BuildContext context)=>
                  Dialog(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          onPressed: (){
                          showDialog(context: context, builder: (BuildContext context)=>AlertDialog(
                            title: Text("Anda telah menyalin link produk"),
                          ));
                        }, icon: Icon(Icons.insert_link)),
                        IconButton(
                          onPressed: (){
                          showDialog(context: context, builder: (BuildContext context)=> AlertDialog(
                            title: Text("Anda telah membagikan ke email"),
                          ));
                        }, icon: Icon(Icons.email)),
                        IconButton(
                          onPressed: (){
                          showDialog(context: context, builder: (BuildContext context)=>AlertDialog(
                            title: Text("Anda telah membagikan melalui nomor"),
                          ));
                        }, icon: Icon(Icons.sms))
                      ],
                    ),
                  ));
                }, icon: Icon(Icons.share_rounded))
              ],
            )
          ],
        ),
      ),
    );
  }
}