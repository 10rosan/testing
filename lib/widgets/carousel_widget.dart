import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class MyCarousel extends StatefulWidget {
  @override
  _MyCarouselState createState() => _MyCarouselState();
}

class _MyCarouselState extends State<MyCarousel> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 200,
      child: Carousel(
        indicatorBgPadding: 5,
        dotPosition: DotPosition.topRight,
        dotBgColor: Colors.transparent,
        images: [
          Image.asset(
            "images/pizza.jpg",
            fit: BoxFit.cover,
          ),
          Image.asset(
            "images/pizza.jpg",
            fit: BoxFit.cover,
          ),
          Image.asset(
            "images/pizza.jpg",
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
