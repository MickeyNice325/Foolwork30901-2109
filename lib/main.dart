import 'package:flutter/material.dart';
// import 'package:flutter_application_1/screen/home.dart';
// import 'package:flutter_application_1/tabbar.dart';
import 'package:flutter_application_1/googlenavbar.dart';

class FoodMenu {
  final String name;
  final String price;
  final String img;

  FoodMenu(this.name, this.price, this.img);
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'NotoSansThai',
      ),
      home: Example(),
    );
  }
}
