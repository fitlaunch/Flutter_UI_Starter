import 'package:flutter/material.dart';
import 'package:startertemplate/components/the_app_bar.dart';

/*
A B O U T P A G E
*/

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TheAppBar(
        title: 'ABOUT',
      ),
      body: Center(child: Text('this app was designed for..')),
    );
  }
}
