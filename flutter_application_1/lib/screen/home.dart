import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/accountpage.dart';
import 'package:flutter_application_1/screen/foodmenupage.dart';
import 'package:flutter_application_1/screen/profile.dart';
import 'package:flutter_application_1/screen/travel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("เมนู"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(10, 50, 10, 0),
          child: SingleChildScrollView(
            child: Column(children: [
              Image.asset(
                "asset/images/ambatukam.png",
                width: 350,
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return MyfoodPage();
                      },
                    ));
                  },
                  icon: Icon(Icons.menu),
                  label: Text(
                    "MENU",
                    style: TextStyle(fontSize: 20,fontFamily: 'UNOWNFONT'),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Myaccountpage();
                      },
                    ));
                  },
                  icon: Icon(Icons.account_balance),
                  label: Text(
                    "บัญชีรายรับรายจ่าย",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
                            SizedBox(
                height: 15,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Profile();
                      },
                    ));
                  },
                  icon: Icon(Icons.account_circle_outlined),
                  label: Text(
                    "ผู้จัดทำ",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return travel();
                      },
                    ));
                  },
                  icon: Icon(Icons.account_circle_outlined),
                  label: Text(
                    "ท่องเที่ยว",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              )
              
            ]),
          ),
        ));
  }
}
