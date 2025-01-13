
import 'package:flutter/material.dart';
// import 'package:flutter_application_1/screen/home.dart';
// import 'package:flutter_application_1/tabbar.dart';
import 'package:flutter_application_1/googlenavbar.dart';
import 'package:lottie/lottie.dart';


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
      home: lottiescreen(),  // Starting screen
    );
  }
}

class lottiescreen extends StatefulWidget {
  const lottiescreen({super.key});

  @override
  State<lottiescreen> createState() => _lottiescreenState();
}

class _lottiescreenState extends State<lottiescreen> {

  @override
  void initState() {
    super.initState();
    _navigateToNextPage();
  }

  void _navigateToNextPage() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => Example(), // Replace with your actual Example widget
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = 0.0; // Start from 0 for a fade-in effect
            const end = 1.0;   // End at 1 for full opacity
            const curve = Curves.easeInOut;
            var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
            var opacityAnimation = tween.animate(animation);
            var fadeChild = FadeTransition(
              opacity: opacityAnimation,
              child: child,
            );
            return fadeChild;
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset('asset/images/Aniki_Hamster.json'), // Ensure path is correct
            SizedBox(
              height: 20,
            ),
            Text(
              'Welcome to my ball',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
             SizedBox(
              height: 20,
            ),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}