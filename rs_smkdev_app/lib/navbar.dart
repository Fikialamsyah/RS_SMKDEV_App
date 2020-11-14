import 'package:flutter/material.dart';
import 'package:rs_smkdev_app/profile/profile_page.dart';

import 'home/home_page.dart';

class Navbar extends StatefulWidget {
  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _selectedIndex = 0;
  //widget ini digunakan untuk tujuan dari navigasi bar ketika di klik
  final _widgetOptions = <Widget>[
    HomePage(),
    Text('Page Layanan'),
    Text('Page Profile'),
    ProfilePage(),
    Text('Page More')
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        height: 70,
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            //Kumpulan item ini akan ditampilkan sebagai button dalam bar navigasi
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              title: Text('Beranda'),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.medical_services_outlined,
              ),
              title: Text('Layanan'),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_today_outlined,
              ),
              title: Text('Booking'),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.assignment_ind_outlined,
              ),
              title: Text('Profile'),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.more_vert,
              ),
              title: Text('More'),
            ),
          ],
          selectedItemColor: Colors.blue,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.grey,
          currentIndex: _selectedIndex, //digunakan untuk menselect menu yang dipilih sesuai index widget
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
