import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// top background pic - lets work on taking this out of listview
        /// and placing above
        const ProfileBanner(),
        Expanded(
          child: ListView(
            children: [
              /// grid of photos or items
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 10,
                padding: const EdgeInsets.symmetric(horizontal: 8),
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
          ),
        ),
      ],
    );
  }
}

class ProfileBanner extends StatelessWidget {
  const ProfileBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(5, 5, 5, 0),
          padding: const EdgeInsets.all(10),
          height: 180,
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage('lib/images/firefighters-smoke.jpeg'),
              fit: BoxFit.cover,
            ),
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(16),
            color: Colors.grey[200],
          ),
        ),

        ///top profile pic background
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 110,
            width: 110,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ),

        ///top profile pic
        Padding(
          padding: const EdgeInsets.all(15.0),
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
                image:
                    AssetImage('lib/images/hunter_bounty_boba_fett_icon.png'),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
