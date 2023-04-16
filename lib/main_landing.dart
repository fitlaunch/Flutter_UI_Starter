import 'package:flutter/material.dart';

import 'components/my_bottom_nav_bar.dart';
import 'components/my_drawer.dart';
import 'components/the_app_bar.dart';
import 'pages/home_page.dart';
import 'pages/profile_page.dart';
import 'pages/setting_page.dart';
import 'pages/shop_page.dart';

/*
This is the MainPage. It is the holder of all other pages.
This provides the AppBar and BottomNavBar for all below indexed pages.
*/

class MainLanding extends StatefulWidget {
  const MainLanding({super.key});

  @override
  State<MainLanding> createState() => _MainLandingState();
}

class _MainLandingState extends State<MainLanding> {
  // This selected index is to control the bottom nav bar
  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    HomePage(),
    const ShopPage(),
    const ProfilePage(),
    const SettingPage(),
  ];

  // String pageTitle(index) {
  //   //var index = _selectedIndex;
  //   if (index == 0) {
  //     return 'HOME';
  //   } else if (index == 1) {
  //     return 'SHOP';
  //   } else if (index == 2) {
  //     return 'PROFILE';
  //   } else if (index == 3) {
  //     return 'SETTINGS';
  //   } else {
  //     return 'THE APP';
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: const TheAppBar(title: 'COOL APP'),
      //TheAppBar(title: pageTitle.toString()),
      drawer: const MyDrawer(),
      body: _pages[_selectedIndex],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
    );
  }
}
