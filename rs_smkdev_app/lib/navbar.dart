import 'package:flutter/material.dart';

import 'home/home_page.dart';

class Navbar extends StatefulWidget {
  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _selectedIndex = 0;
  final _widgetOptions = <Widget>[
    HomePage(),
    Text('Page Layanan'),
    Text('Page Booking'),
    Text('Page Profile'),
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
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
