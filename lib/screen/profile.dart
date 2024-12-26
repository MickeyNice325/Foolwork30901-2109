import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('โปรไฟล์ของฉัน'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('asset/images/IMG_2203.PNG'),
              ),
              const SizedBox(height: 16),
              const Text(
                'นาย นัทพงษ์ วงศ์แสง',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text('นักเก'),
              const SizedBox(height: 24),
              // เพิ่มข้อมูลส่วนตัวอื่นๆ
              const ListTile(
                leading: Icon(Icons.email),
                title: Text('stu66309010040@lannapoly.ac.th'),
              ),
              const ListTile(
                leading: Icon(Icons.phone),
                title: Text('096-650-3191'),
              ),
              // ... เพิ่มรายการอื่นๆ ตามต้องการ
            ],
          ),
        ),
      ),
    );
  }
}