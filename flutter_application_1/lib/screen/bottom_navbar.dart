import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/dashboard_user.dart';
import 'package:flutter_application_1/screen/home.dart';
import 'package:flutter_application_1/screen/keranjang.dart';

class DynamicBottomNavbar extends StatefulWidget {
  @override
  _DynamicBottomNavbarState createState() => _DynamicBottomNavbarState();
}

class _DynamicBottomNavbarState extends State<DynamicBottomNavbar> {
  int _currentPageIndex = 0;

  final List<Widget> _pages = <Widget>[
    HomeScreenProduk(),
    DashboardUser(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentPageIndex], // Menampilkan halaman sesuai index
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentPageIndex,
        onTap: onTabTapped,
        selectedItemColor: Colors.orange.shade700,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Anda',
          ),
        ],
      ),
    );
  }
}
