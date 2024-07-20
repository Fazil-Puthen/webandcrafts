import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mypcot/constants/constants.dart';
import 'package:mypcot/view/homescreen/subwidgets/category_widget.dart';
import 'package:mypcot/view/homescreen/subwidgets/first_carousal.dart';
import 'package:mypcot/view/homescreen/subwidgets/headings.dart';
import 'package:mypcot/view/homescreen/subwidgets/product_container.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return Center(
      child: Container(
          width: screenwidth,
          height: screenheight,
          // color: Colors.green[200],
          child: SingleChildScrollView(
            child: Column(
              children: [
                //top banner section
                SizedBox(
                  width: screenwidth,
                  height: 200,
                  child: const first_carousal(),
                ),
                gap,

                //Most popular heading row
                const heading_text(
                  heading: 'Most Popular',
                  subhead: 'view all',
                ),
                gap,

                //most popular section
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    width: screenwidth,
                    height: 200,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      separatorBuilder: (context, index) => const SizedBox(
                        width: 10,
                      ),
                      itemBuilder: (context, index) {
                        return product_container();
                      },
                    ),
                  ),
                ),
                gap,
                gap,

                //slider section
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: screenwidth * 0.95,
                      height: 150,
                      child: AnotherCarousel(
                        images: const [
                          AssetImage(
                              'assets/banner3.jpg'),
                          AssetImage(
                              'assets/banner2.jpg'),
                          AssetImage("assets/banner 1.jpg")
                        ],
                        dotSize: 0,
                        indicatorBgPadding: 0,
                      ),
                    ),
                  ],
                ),
                gap,

                //categories heading row
                const heading_text(heading: 'Categories', subhead: 'view all'),
                gap,

                //products in categories
                Container(
                  margin: EdgeInsets.only(left: 10),
                  // color: Colors.amber,
                  width: screenwidth,
                  height: 100,
                  child: const category_widget(),
                ),
                gap,
                progap,

                //featured text
                const heading_text(
                    heading: 'Featured Products', subhead: 'view all'),
                gap,
                progap,

                //featured products section
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Container(
                    width: screenwidth,
                    height: 200,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      separatorBuilder: (context, index) => const SizedBox(
                        width: 10,
                      ),
                      itemBuilder: (context, index) {
                        return product_container();
                      },
                    ),
                  ),
                ),
                gap,
                gap,
              ],
            ),
          )),
    );
  }
}
