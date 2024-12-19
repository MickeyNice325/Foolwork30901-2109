import 'package:flutter/material.dart';
import 'package:flutter_application_1/MoneyBox.dart';

class Myaccountpage extends StatelessWidget {
  const Myaccountpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "รายรับรายจ่าย",
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), 
        child: Column(
          children: [
            MoneyBox(
              title: 'ยอดคงเหลือ',
              amount: 0, 
              color: Colors.deepPurpleAccent,
              size: 150,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
              children: [
                MoneyBox(
                  title: 'รายรับ',
                  amount: 10,
                  color: Colors.green,
                  size: 120,
                ),
                MoneyBox(
                  title: 'รายจ่าย',
                  amount: 500,
                  color: Colors.red, 
                  size: 120,
                ),
              ],
            ),
            const SizedBox(height: 20),
              MoneyBox(
              title: 'ค้างชำระเงิน',
              amount: 100000000, 
              color: Colors.red,
              size: 150,
            ),
          ],
        ),
      ),
    );
  }
}