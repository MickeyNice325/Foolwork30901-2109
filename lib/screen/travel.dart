import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/home.dart';
void main() => runApp(const travel());

class travel extends StatelessWidget {
  const travel({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ท่องเที่ยว',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const TravelHomePage(),
    );
  }
}

class TravelHomePage extends StatelessWidget {
  const TravelHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title: const Text('สถานที่ท่องเที่ยว'),
  centerTitle: true,
  leading: IconButton(
    icon: const Icon(Icons.arrow_back),
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const HomeScreen(), // แทน `home()` ด้วยชื่อคลาสหน้าที่ถูกต้อง
        ),
      );
    },
  ),
),
      body: const LayoutDemo(),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Image.asset(
          'asset/images/homeip.PNG', // ระบุ path รูปภาพใน assets
          width: double.infinity,
          height: 240,
          fit: BoxFit.cover,
        ),
        titleSection(),
        buttonSection(context),
        textSection(),
      ],
    );
  }

  Widget titleSection() {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'บ้านไอ่พี',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'ประเทศไทย',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const SizedBox(width: 4),
          const Text('41'),
        ],
      ),
    );
  }

  Widget buttonSection(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(context, Icons.call, 'CALL'),
          _buildButtonColumn(context, Icons.near_me, 'ROUTE'),
          _buildButtonColumn(context, Icons.share, 'SHARE'),
        ],
      ),
    );
  }

  Widget _buildButtonColumn(BuildContext context, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: Theme.of(context).primaryColor),
        const SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ],
    );
  }

  Widget textSection() {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Text(
        'สกฟวดาวหฟงดสวหกเ่ดหกเ่ดกสว้่กสห้วสงวสาดเวสากดเวาสเาวสเวาสดาวสกดาหเว่ยฟนดเา่ดกยงา้เ่ยนะ่้ดสวเหง้สวาฟหวงาเฟ่หพเ่ดวสฟิทดสกหงดเ '
        'เกหฟสวกเาหงดห่รฟเาดกสเดแกเแกอ้ายไม่รู้จะเขียนอะไรแทนข้อความนี้',
        softWrap: true,
      ),
    );
  }
}
