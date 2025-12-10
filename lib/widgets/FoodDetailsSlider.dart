import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class FoodDetailsSlider extends StatelessWidget {
  final String slideImage1;
  final String slideImage2;
  final String slideImage3;

  FoodDetailsSlider({
    Key? key,
    required this.slideImage1,
    required this.slideImage2,
    required this.slideImage3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final images = <String>[
      slideImage1,
      slideImage2,
      slideImage3,
    ].where((s) => s.trim().isNotEmpty).toList();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: CarouselSlider(
          items: images.map((path) {
            return Image.asset(
              path,
              fit: BoxFit.cover,
              width: double.infinity,
            );
          }).toList(),
          options: CarouselOptions(
            aspectRatio: 16 / 9,
            viewportFraction: 1.0,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 4),
            enlargeCenterPage: false,
            enableInfiniteScroll: images.length > 1,
            // customize dots/indicators below if needed
          ),
        ),
      ),
    );
  }
}
