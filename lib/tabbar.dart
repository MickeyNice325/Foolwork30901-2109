import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/accountpage.dart';
// import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/screen/foodmenupage.dart';
import 'package:flutter_application_1/screen/home.dart';
import 'package:flutter_application_1/screen/profile.dart';
import 'package:flutter_application_1/screen/travel.dart';

class tabbar extends StatelessWidget {
  const tabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: TabBarView(
         children: [
          HomeScreen(),
          Myaccountpage(),
          MyfoodPage(),
          Profile(),
          travel(),
         ],
      ),
      backgroundColor: Colors.deepPurpleAccent,
      bottomNavigationBar: TabBar(
        unselectedLabelColor: Colors.cyanAccent,
        labelColor: Colors.amber,
        tabs: [
        Tab(
          text: "Home",
          icon:  Icon(Icons.home),
        ),
        Tab(
          text: "Account",
          icon:  Icon(Icons.wallet),
        ),
        Tab(
          text: "Food",
          icon:  Icon(Icons.food_bank),
        ),
        Tab(
          text: "Profile",
          icon:  Icon(Icons.man),
        ),
        Tab(
          text: "Traver",
          icon:  Icon(Icons.travel_explore_rounded),
        ),

      ]),
      )
    );
  }
}
