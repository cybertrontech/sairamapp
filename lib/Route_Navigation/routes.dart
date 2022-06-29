import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tunesevenui/Homepages/home_page.dart';
import "package:tunesevenui/screen/login and signup/register_page.dart";
import "package:tunesevenui/screen/login and signup/Login.dart";
import 'package:tunesevenui/screen/Main%20Page/splash.dart';
import '../Homepages/navigation_menu.dart';
import '../screen/Main Page/Main Artist.dart';
import '../screen/Main Page/get_started.dart';
import '../screen/Main Page/welcome_screen.dart';
import '../screen/Main Page/your library.dart';

class RoutesClass {
  // static String start = "/";
  static const String getHomeScreen = "/";
  static String welcomeScreen = "/welcome";
  static String getStartedScreen = "/get_started";
  static String loginScreen = "/login";
  static String registerScreen = "/register";
  static String homePageScreen = "/homepage";
  static String myLibraryScreen = "/yourlibrary";
  static String pariticularArtistScreen = "/particular_artist";

  static List<GetPage> route = [
    GetPage(name: '/', page: () => SplashScreen()),
    GetPage(name: welcomeScreen, page: () => WelcomeScreen()),
    GetPage(name: getStartedScreen, page: () => GetStarted()),
    GetPage(name: loginScreen, page: () => testlogin()),
    GetPage(name: homePageScreen, page: () => NavMenu()),
    GetPage(name: registerScreen, page: () => Signup()),
    GetPage(name: myLibraryScreen, page: () => yourlibrary()),
    GetPage(
        name: pariticularArtistScreen,
        page: () =>
            Artist()) // GetPage(name: '/HomePage', page: ()=>HomePage())
  ];
}
