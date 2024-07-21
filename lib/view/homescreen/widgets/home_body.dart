import 'dart:isolate';

import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mypcot/constants/constants.dart';
import 'package:mypcot/model/home_model.dart';
import 'package:mypcot/view/homescreen/subwidgets/category_widget.dart';
import 'package:mypcot/view/homescreen/subwidgets/first_carousal.dart';
import 'package:mypcot/view/homescreen/subwidgets/headings.dart';
import 'package:mypcot/view/homescreen/subwidgets/product_container.dart';
import 'package:mypcot/viewmodel/products_provider.dart';
import 'package:provider/provider.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;

    // final provider=Provider.of<HomeDataProvider>(context);
    // final data=provider.homeData;
    // print('the loading option from screen ${provider.isLoading}');


    return Consumer<HomeDataProvider>(builder: (context, value, child) {
      print('this is the isloding inside the screen ${value.isLoading}');
    if(value.isLoading){
      return const Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [CircularProgressIndicator(),
        Text('loading .........')],),
      );
    }
    else if(value.error!=null){
      return const Center(child:Text('error'),);
    }

    else if(!value.isLoading){
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
                  child: first_carousal(value: value,),
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
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    width: screenwidth,
                    height: 200,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: value.homeData!.mostPopular.length,
                      separatorBuilder: (context, index) => const SizedBox(
                        width: 10,
                      ),
                      itemBuilder: (context, index) {
                        return product_container(value:value.homeData!.mostPopular,index: index,);
                      },
                    ),
                  ),
                ),
                gap,
                gap,

                //single image banner section
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        // border: Border.all(width: 0),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      width: screenwidth * 0.9,
                      height: 150,
                      child: AnotherCarousel(
                        images: value.homeData!=null?
                         [ NetworkImage(value.homeData!.adBannerImageUrl,scale: 10)]:
                         const [AssetImage('assets/banner3.jpg')],
                       
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
                  child: CategoryWidget(value:value.homeData!.categories),
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
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    width: screenwidth,
                    height: 200,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: value.homeData!.bestSellers.length,
                      separatorBuilder: (context, index) => const SizedBox(
                        width: 10,
                      ),
                      itemBuilder: (context, index) {
                        return product_container(value:value.homeData!.bestSellers,index: index,);
                      },
                    ),
                  ),
                ),
                gap,
                gap,
              ],
            ),
          )),
    );}
    else {return SizedBox();}
    }
);
  }
}
