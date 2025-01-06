import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
class MyCarouselSlider extends StatelessWidget {
  const MyCarouselSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('CarouselSlider'),
      centerTitle: true,
    ),
    body: Padding(padding: EdgeInsets.all(16.0),
    child: Column(
      children: [
        CarouselSlider(
        items: [
          Image.asset('asset/images/mavin.jpg',
          height: 1200,
          width: 2200,
          ),
          Image.asset('asset/images/maxresdefault.jpg',
          height: 1200,
          width: 2200,
          ),
          Image.asset('asset/images/Shrugging-Rat-meme-9.jpg',
          height: 1200,
          width: 2200,
          ),
        ],
        options: CarouselOptions(
          height: 200.0,
          enlargeCenterPage: true,
          autoPlay: true,
          aspectRatio: 16/9,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          viewportFraction: 0.8,
        ),
        ),
      ],
    ),
    ),
    );

  }
}