
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mealapp2/screens/account_screen.dart';
import 'package:mealapp2/screens/favourites_screen.dart';
import 'package:mealapp2/screens/home_screen.dart';
import 'package:mealapp2/screens/settings_screen.dart';

class Home extends StatefulWidget{
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int currentIndex = 0;

  final screens = [
    HomeScreen(),
    FavouritesScreen(),
    AccountScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),

      bottomNavigationBar: BottomNavigationBar(

        selectedItemColor: Theme.of(context).primaryColor,
        selectedFontSize: 16,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),

        unselectedItemColor: Colors.black54,

        currentIndex: currentIndex,
        onTap: (value) => setState(() => currentIndex=value),

        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favourites'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Account'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings'
          )
        ],

      ),

    );
  }
}