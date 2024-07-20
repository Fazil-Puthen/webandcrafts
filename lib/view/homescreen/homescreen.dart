import 'dart:convert';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mypcot/view/homescreen/widgets/account_body.dart';
import 'package:mypcot/view/homescreen/widgets/appbar_widget.dart';
import 'package:mypcot/view/homescreen/widgets/cart_body.dart';
import 'package:mypcot/view/homescreen/widgets/category_body.dart';
import 'package:mypcot/view/homescreen/widgets/home_body.dart';
import 'package:mypcot/view/homescreen/widgets/offers_body.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int currentindex=0;
  final screen=[
   const  HomeBody(),
   const CategoryBody(),
   const Cart(),
   const Offers(),
    const Account()
  ];

  @override
  Widget build(BuildContext context) {
    final screenwidth=MediaQuery.of(context).size.width;
    final screenheight=MediaQuery.of(context).size.height;
    return SafeArea(
      child:  Scaffold(
        appBar: const PreferredSize(preferredSize: Size.fromHeight(60),
         child:AppbarWidget()),
      
         body:screen[currentindex],
         bottomNavigationBar:BottomNavigationBar(
          currentIndex: currentindex,
          onTap: (value) => setState(()=>currentindex=value),
         type: BottomNavigationBarType.shifting, 
         items: const [
         BottomNavigationBarItem(icon: Icon(Icons.home),tooltip: 'Home',
         label: 'Home',backgroundColor: Colors.green),
         BottomNavigationBarItem(icon: Icon(Icons.category_outlined),label: 'Category',backgroundColor: Colors.grey),
         BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: 'Cart',backgroundColor: Colors.grey),
         BottomNavigationBarItem(icon: Icon(Icons.offline_bolt_sharp),label: 'Offers',backgroundColor: Colors.grey),
         BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Account',backgroundColor: Colors.grey),] )
),
         );
  }
}
