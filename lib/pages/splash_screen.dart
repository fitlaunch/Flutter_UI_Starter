import 'package:flutter/material.dart';

import 'app_routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double sizeStart = 0, sizeEnd = 200;
  int duration = 1500;
  double opacityStart = 1, opacityEnd = 1;

  @override
  void initState() {
    animate();
    super.initState();
  }

  void animate() {
    Future.delayed(const Duration(milliseconds: 1500)).then((value) {
      setState(() {
        opacityEnd = 0; //fades out image
        sizeEnd = 400; //keeps image growing
      });
      Future.delayed(const Duration(milliseconds: 1600)).then((value) {
        ///so user can't come back to splash page
        Navigator.pushReplacementNamed(context, AppRoutes.loginPage);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TweenAnimationBuilder(
            tween: Tween<double>(begin: sizeStart, end: sizeEnd),
            duration: Duration(milliseconds: duration),
            builder: (BuildContext context, double size, Widget? child) {
              return TweenAnimationBuilder(
                  tween: Tween<double>(begin: opacityStart, end: opacityEnd),
                  duration: Duration(milliseconds: duration),
                  builder:
                      (BuildContext context, double opacity, Widget? child) {
                    return Opacity(
                      opacity: opacity,
                      child: Image.asset(
                        'lib/images/hunter_bounty_boba_fett_icon.png',
                        color: Colors.white70,
                        width: size,
                        height: size,
                      ),
                    );
                  });
            }),
      ),
    );
  }
}
