import 'package:aplikasi_makanan/pages/discover.dart';
import 'package:aplikasi_makanan/pages/order.dart';
import 'package:aplikasi_makanan/pages/profile.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_makanan/pages/home.dart';
// Home Page

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key});

  @override
  _NavigationMenuState createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  int _selectedIndex = 0;

  // List of widgets corresponding to each page
  static const List<Widget> _widgetOptions = <Widget>[
    HomeWidget(), // Home Page
    DiscoverWidget(), // Placeholder for Explore
    OrderWidget(), // Placeholder for Cart
    ProfileWidget(), // Placeholder for Profile
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.orange,
        unselectedItemColor: const Color(0xff979797),
        onTap: _onItemTapped,
      ),
    );
  }
}
