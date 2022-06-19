import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:tunesevenui/navigation/routes.dart';

import '../screen/Main Page/splash.dart';
import '../screen/Main Page/welcome_screen.dart';


Route ourRouteGenerator(RouteSettings settings) {
  switch (settings.name) {

    case Routes.splashScreen:
      return MaterialPageRoute(builder: (_) => SplashScreen());
    case Routes.welcomeScreen:
      return MaterialPageRoute(builder: (_) => WelcomeScreen());
    case Routes.dashboardScreen:
      return MaterialPageRoute(builder: (_) => WelcomeScreen());
    default:
      return MaterialPageRoute(builder: (_) => SplashScreen());

  }
}



