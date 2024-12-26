import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MoneyBox extends StatelessWidget {
  final String title;
  final double amount;
  final Color color;
  final double size;

  const MoneyBox({
    Key? key,
    required this.title,
    required this.amount,
    required this.color,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formatter = NumberFormat('#,###.##', 'th_TH'); // Specify Thai locale for correct formatting

    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      height: size,
      child: Padding(
        padding: const EdgeInsets.all(16.0), // Add padding for better spacing
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align items evenly
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '${formatter.format(amount)} บาท',
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}