import 'package:flutter/material.dart';

/*

H O M E P A G E

This is the HomePage, the first page the user will see based off what was configured
 in the LandingPage.
Currently it is just showing a vertical list of boxes.

*/

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final ScrollController _controller =
      ScrollController(initialScrollOffset: 90);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            Expanded(
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
            HorzList(controller: _controller),
          ],
        ),
      ),
    );
  }
}

class HorzList extends StatelessWidget {
  const HorzList({
    super.key,
    required ScrollController controller,
  }) : _controller = controller;

  final ScrollController _controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.blueGrey.withOpacity(.3),
        height: 120,
        child: ListView.builder(
          controller: _controller,
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) => Container(
            width: 200,
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
