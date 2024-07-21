import 'package:flutter/material.dart';
import 'package:motion_tab_bar/MotionTabBar.dart';
import 'package:motion_tab_bar/MotionTabBarController.dart';
import 'package:mypcot/view/homescreen/widgets/account_body.dart';
import 'package:mypcot/view/homescreen/widgets/appbar_widget.dart';
import 'package:mypcot/view/homescreen/widgets/cart_body.dart';
import 'package:mypcot/view/homescreen/widgets/category_body.dart';
import 'package:mypcot/view/homescreen/widgets/home_body.dart';
import 'package:mypcot/view/homescreen/widgets/offers_body.dart';
import 'package:mypcot/viewmodel/products_provider.dart';
import 'package:provider/provider.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> with SingleTickerProviderStateMixin {
 MotionTabBarController? _tabBarController;
  final List<Widget> screens = [
    const HomeBody(),
    const CategoryBody(),
    const Cart(),
    const Offers(),
    const Account(),
  ];

  @override
  void initState() {
    super.initState();
    _tabBarController=MotionTabBarController(length:5, vsync:this,initialIndex: 0);
    final provider = Provider.of<HomeDataProvider>(context, listen: false);
    provider.fetchHomeData();
  }

  @override
  void dispose() {
    _tabBarController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: AppbarWidget(),
        ),
        body: TabBarView(
          controller: _tabBarController,
          children: screens,
        ),


        bottomNavigationBar:  MotionTabBar(
    controller: _tabBarController, // ADD THIS if you need to change your tab programmatically
    initialSelectedTab: "Home",
    labels: const ["Home", "Category", "Cart", "Offers", "Account"],
     icons: const [
            Icons.home,
            Icons.category_outlined,
            Icons.shopping_cart,
            Icons.bolt_sharp,
            Icons.person,
          ],

    tabSize: 50,
    tabBarHeight: 55,
    textStyle: const TextStyle(
      fontSize: 12,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    ),
    tabIconColor: Colors.grey[600],
    tabIconSize: 24.0,
    tabIconSelectedSize: 26.0,
    tabSelectedColor: Colors.green[400],
    tabIconSelectedColor: Colors.white,
    tabBarColor: Colors.grey[400],
    onTabItemSelected: (int value) {
      setState(() {
        // _tabController!.index = value;
        _tabBarController!.index = value;
      });
    },
  ),
      ),
    );
  }
}
