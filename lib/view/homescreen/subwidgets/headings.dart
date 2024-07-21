import 'package:flutter/material.dart';
import 'package:mypcot/constants/constants.dart';

class HeadingText extends StatelessWidget {
  final String heading;
  final String subhead;
  const HeadingText({
    super.key,
    required this.heading,
    required this.subhead,
  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [Text(heading,style: headingfont,),
      Text(subhead)],),
    );
  }
}