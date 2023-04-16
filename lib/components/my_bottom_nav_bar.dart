import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../providers/active_theme_provider.dart';

/*
This is the Bottom Navigation Bar from Google.
*/

class MyBottomNavBar extends StatelessWidget {
  void Function(int) onTabChange;
  MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      return Container(
        color: ref.watch(activeThemeProvider) == Themes.dark
            ? Colors.grey.shade800
            : Colors.grey.shade200,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: GNav(
          rippleColor: Colors.orange,
          color: ref.watch(activeThemeProvider) == Themes.dark
              ? Colors.white70
              : Colors.black54,
          activeColor: ref.watch(activeThemeProvider) == Themes.dark
              ? Theme.of(context).colorScheme.primary //Colors.black
              : Theme.of(context).colorScheme.primary, //Colors.white
          tabBackgroundColor: ref.watch(activeThemeProvider) == Themes.dark
              ? Colors.white
              : Colors.black54,

          padding: const EdgeInsets.all(16),
          gap: 8,
          onTabChange: (value) => onTabChange(value),
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.shopping_bag_rounded,
              text: 'Shop',
            ),
            GButton(
              icon: Icons.person,
              text: 'Profile',
            ),
            GButton(
              icon: Icons.settings,
              text: 'Settings',
            ),
          ],
        ),
      );
    });
  }
}
