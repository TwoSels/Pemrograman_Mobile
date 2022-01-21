import 'package:flutter/material.dart';
import 'package:sayurku/home_screen.dart';
import 'package:sayurku/cart_screen.dart';
import 'package:sayurku/profil_screen.dart';

class nav_screen extends StatefulWidget {
  nav_screen({Key? key}) : super(key: key);

  @override
  _nav_screenState createState() => _nav_screenState();
}

class _nav_screenState extends State<nav_screen> {
  @override
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    home_screen(),
    cart_screen(),
    profil_screen(),
  ];
  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
        selectedItemColor: Colors.green,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Keranjang',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Akun',
          ),
        ],
      ),
    );
  }
}
