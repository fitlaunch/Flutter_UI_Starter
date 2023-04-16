import 'package:flutter/material.dart';
import 'package:startertemplate/pages/splash_screen.dart';

import 'about_page.dart';
import 'login_page.dart';

class AppRoutes {
  static String aboutPage = 'about';
  static String loginPage = 'login';
  static String splashScreen = 'splash';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    if (settings.name == splashScreen) {
      return splashRoute();
    } else if (settings.name == aboutPage) {
      return MaterialPageRoute(
          builder: (BuildContext context) => const AboutPage());
    } else if (settings.name == loginPage) {
      return MaterialPageRoute(
          builder: (BuildContext context) => const LoginPage());
    }
    return splashRoute();
  }

  static Route<dynamic> splashRoute() {
    return MaterialPageRoute(
        builder: (BuildContext context) => const SplashScreen());
  }
}
