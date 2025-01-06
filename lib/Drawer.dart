import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/accountpage.dart';
// import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/screen/foodmenupage.dart';
import 'package:flutter_application_1/screen/home.dart';
import 'package:flutter_application_1/screen/profile.dart';
import 'package:flutter_application_1/screen/travel.dart';
import 'package:flutter_application_1/screen/carousel-slider.dart';
class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            accountName: Text(
              "Nattapong Wongsaeng",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            accountEmail: Text(
              "stu66309010040@lannapoly.ac.th",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            currentAccountPicture: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("asset/images/ambatukam.png"),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.train),
            title: const Text('Travel'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const travel()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.fastfood),
            title: const Text('Food Menu'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyfoodPage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.account_circle),
            title: const Text('Account'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Myaccountpage()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Profile'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Profile()),
              );
            },
          ),
            ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Carousel-slider'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyCarouselSlider()),
              );
            },
          ),
        ],
      ),
    );
  }
}

// Define simple widgets for each page to avoid navigation errors
class TravelPage extends StatelessWidget {
  const TravelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Travel Page')),
      body: const Center(child: Text('Welcome to the Travel Page')),
    );
  }
}

class FoodMenuPage extends StatelessWidget {
  const FoodMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Food Menu Page')),
      body: const Center(child: Text('Welcome to the Food Menu Page')),
    );
  }
}

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Account Page')),
      body: const Center(child: Text('Welcome to the Account Page')),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile Page')),
      body: const Center(child: Text('Welcome to the Profile Page')),
    );
  }
}
