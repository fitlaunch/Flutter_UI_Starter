import 'package:flutter/material.dart';

/*

H O M E P A G E

This is the HomePage, the first page the user will see based off what was configured
 in the LandingPage.
Currently it is just showing a vertical list of boxes.

*/

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) => Container(
            height: 200,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black38, width: 3),
              borderRadius: BorderRadius.circular(8),
              color: Colors.grey[200],
            ),
          ),
        ),
      ),
    );
  }
}
