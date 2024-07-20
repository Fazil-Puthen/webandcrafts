import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';

class first_carousal extends StatelessWidget {
  const first_carousal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnotherCarousel(
      images:const  [
        AssetImage(
            'assets/banner3.jpg'),
        AssetImage(
            'assets/banner2.jpg'),
       AssetImage("assets/banner 1.jpg")
      ],
      dotSize: 6,
      dotSpacing: 12,
      indicatorBgPadding:10 ,
      dotIncreaseSize: 0.5
    );
  }
}