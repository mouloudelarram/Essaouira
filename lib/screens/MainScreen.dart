import 'package:app/screens/MapScreen.dart';
import 'package:app/screens/ProfilScreen.dart';
import 'package:flutter/material.dart';

import '../models/Destination.dart';
import 'HomeScreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentTab = 1;
  final screens = [
    const MapScreen(),
    const HomeScreen(),
    const ProfilScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        onTap: (int value) {
          fillList();
          setState(() {
            _currentTab = value;
          });
        },
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.map,
              size: 30.0,
            ),
            label: 'map',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30.0,
            ),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 15.0,
              backgroundImage: AssetImage(
                  'assets/images/user.jpg'), //NetworkImage('http://i.imgur.com/zL4Krbz.jpg'),
            ),
            label: 'profil',
          )
        ],
      ),
    );
  }
}
