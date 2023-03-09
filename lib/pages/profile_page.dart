import 'package:flutter/material.dart';

/*

P R O F I L E P A G E

*/

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // top circle profile pic
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Stack(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                height: 220,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('lib/images/firefighters-smoke.jpeg'),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.grey[200],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 110,
                  width: 110,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  alignment: Alignment.topLeft,
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2.0, color: Colors.black54),
                    borderRadius: BorderRadius.circular(100),
                    //shape: BoxShape.circle,
                    color: Colors.grey[200],
                    image: const DecorationImage(
                      image: AssetImage(
                          'lib/images/hunter_bounty_boba_fett_icon.png'),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        // grid of photos or items
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 10,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) => Container(
            height: 200,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Colors.grey[200],
            ),
          ),
        ),
      ],
    );
  }
}
