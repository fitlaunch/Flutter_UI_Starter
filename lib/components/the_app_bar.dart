import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:startertemplate/components/theme_switch.dart';

import '../providers/active_theme_provider.dart';

class TheAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const TheAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 10,
      leading: Builder(
        builder: (context) => IconButton(
          icon: Icon(
            Icons.menu,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
          onPressed: () => Scaffold.of(context).openDrawer(),
        ),
      ),
      title: Text(
        title,
        style: TextStyle(
          color: Theme.of(context).colorScheme.onPrimary,
        ),
      ),
      actions: [
        Row(
          children: [
            Consumer(builder: (context, ref, child) {
              //change icon according to the theme
              return Icon(
                ref.watch(activeThemeProvider) == Themes.dark
                    ? Icons.dark_mode
                    : Icons.light_mode,
              );
            }),
            const SizedBox(width: 8),
            const ThemeSwitch(),
            const TheAppBarDropDown(),
          ],
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

class TheAppBarDropDown extends StatelessWidget {
  const TheAppBarDropDown({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(itemBuilder: (context) {
      return [
        PopupMenuItem(
          value: 0,
          child: Row(
            children: const [
              Icon(Icons.contact_page),
              SizedBox(width: 3),
              Text('Contact'),
            ],
          ),
        ),
        PopupMenuItem(
          value: 1,
          child: Row(
            children: const [
              Icon(Icons.privacy_tip),
              SizedBox(width: 3),
              Text('Terms'),
            ],
          ),
        ),
        PopupMenuItem(
          value: 2,
          child: Row(
            children: const [
              Icon(Icons.logout),
              SizedBox(width: 3),
              Text('LogOut'),
            ],
          ),
        ),
      ];
    }, onSelected: (value) {
      if (value == 0) {
        print("Contact menu is selected.");
      } else if (value == 1) {
        print("Terms menu is selected.");
      } else if (value == 2) {
        print("Logout menu is selected.");
      }
    });
  }
}
