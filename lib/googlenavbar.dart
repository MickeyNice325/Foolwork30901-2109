import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/accountpage.dart';
import 'package:flutter_application_1/screen/foodmenupage.dart';
import 'package:flutter_application_1/screen/home.dart';
import 'package:flutter_application_1/screen/profile.dart';
import 'package:flutter_application_1/screen/travel.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
class Example extends StatefulWidget {
  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  int _selectedIndex = 0;
  
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Myaccountpage(),
    MyfoodPage(),
    Profile(),
    travel(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0x432E54),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 65, 46, 100),
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Color.fromARGB(223,188, 185, 185),
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Color.fromARGB(174, 68, 90, 90),
              color: Colors.white,
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.wallet,
                  text: 'Accountpage',
                ),
                GButton(
                  icon: Icons.food_bank,
                  text: 'Food',
                ),
                GButton(
                  icon: Icons.man,
                  text: 'Profile',
                ),
                GButton(
                  icon: Icons.travel_explore,
                  text: 'Travel',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}