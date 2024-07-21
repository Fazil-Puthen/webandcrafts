import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:mypcot/viewmodel/products_provider.dart';

class TopBannerslider extends StatelessWidget {
  final HomeDataProvider value;
   const TopBannerslider({
    super.key,
    required this.value,
  });
 
  @override
  Widget build(BuildContext context) {
    final List<Image> images=value.homeData!.banners.
    map((element)=>Image.network(element.imageUrl)).toList();
    return AnotherCarousel(
      images:images,
      dotSize: 6,
      dotSpacing: 12,
      indicatorBgPadding:10 ,
      dotIncreaseSize: 0.5
    );
  }
}