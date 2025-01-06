import 'package:flutter/material.dart';
import 'package:flutter_application_1/Drawer.dart'; // ใช้ Drawer ที่สร้างไว้

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("หน้าแรก"),
        centerTitle: true,
      ),
      drawer: const CustomDrawer(), // ใส่ Drawer ที่สร้างไว้
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 50, 10, 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "asset/images/ambatukam.png",
                width: 500,
              ),
              SizedBox(
                height: 15,
              ),
              // ตัวอย่างปุ่มที่สามารถนำทางไปยังหน้าอื่นๆ
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton.icon(
                  onPressed: () {
                    // เปลี่ยนเส้นทางไปหน้า Menu (MyfoodPage) หากไม่คอมเมนต์
                    // Navigator.push(context, MaterialPageRoute(
                    //   builder: (context) {
                    //     return MyfoodPage();
                    //   },
                    // ));
                  },
                  icon: Icon(Icons.menu),
                  label: Text(
                    "MENU",
                    style: TextStyle(fontSize: 20, fontFamily: 'UNOWNFONT'),
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
                    // นำทางไปหน้าบัญชีรายรับรายจ่าย (Myaccountpage)
                    // Navigator.push(context, MaterialPageRoute(
                    //   builder: (context) {
                    //     return Myaccountpage();
                    //   },
                    // ));
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
                    // นำทางไปหน้าโปรไฟล์ (Profile)
                    // Navigator.push(context, MaterialPageRoute(
                    //   builder: (context) {
                    //     return Profile();
                    //   },
                    // ));
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
                    // นำทางไปหน้าท่องเที่ยว (travel)
                    // Navigator.push(context, MaterialPageRoute(
                    //   builder: (context) {
                    //     return travel();
                    //   },
                    // ));
                  },
                  icon: Icon(Icons.travel_explore),
                  label: Text(
                    "ท่องเที่ยว",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
