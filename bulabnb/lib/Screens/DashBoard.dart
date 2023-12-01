import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'NavBarScreens/FavScreen.dart';
import 'NavBarScreens/HomeScreen.dart';
import 'NavBarScreens/ProfileScreen.dart';
import 'NavBarScreens/SearchScreeen.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(),
    SearchPage(),
    FavoritesPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          _buildNavItem(Icons.home, "Home"),
          _buildNavItem(Icons.search, "Search"),
          _buildNavItem(Icons.favorite, "Favorites"),
          _buildNavItem(Icons.person, "Profile"),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }

  BottomNavigationBarItem _buildNavItem(IconData icon, String label) {
    return BottomNavigationBarItem(
      icon: Icon(
        icon,
        size: 30, // Adjust the size as needed
      ),
      label: label,
    );
  }

  }



