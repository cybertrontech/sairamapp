import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tunesevenui/Homepages/Home_Page.dart';
import 'package:tunesevenui/screen/Main%20Page/music%20player.dart';
import 'package:tunesevenui/screen/Main%20Page/splash.dart';
import 'package:tunesevenui/screen/login%20and%20signup/Signup.dart';
import '../Homepages/navigation_menu.dart';
import '../screen/Main Page/Discography.dart';
import '../screen/Main Page/Main Artist.dart';
import '../screen/Main Page/My Playlist Detail.dart';
import '../screen/Main Page/Playlist Detail – 1.dart';
import '../screen/Main Page/get_started.dart';
import '../screen/Main Page/welcome_screen.dart';
import '../screen/Main Page/your library.dart';
import '../screen/login and signup/Login.dart';
import '../screen/song payment/buying.dart';

class RoutesClass {
  // static String start = "/";
  static String getHomeRoute = "/";
  static String wellcome = "/welcome";
  static String getstarted = "/get_started";
  static String loginpage = "/login";
  static String register = "/register";
  static String navmenu = "/homepage";
  static String library = "/yourlibrary";
  static String particular_artist = "/particular_artist";
  static String musicplayers = "/musicplayers";
  static String artistsdetails = "/artistsdetails";
  static String paidsong ="/paidsong";

  static List<GetPage> route = [
    GetPage(name: '/', page: () => SplashScreen()),
    GetPage(name: wellcome, page: () => WelcomeScreen()),
    GetPage(name: getstarted, page: () => GetStarted()),
    GetPage(name: loginpage, page: () => login()),
    GetPage(name: navmenu, page: () => NavMenu()),
    GetPage(name: register, page: () => Signup()),
    ///Drawer routes start
    GetPage(name: library, page: () => yourlibrary()),
    GetPage(name: particular_artist, page: () => Artist()),
    ///Drawer route end
    GetPage(name: musicplayers, page: () => musicplayer()),
    GetPage(name: artistsdetails, page: () => Discography()),
    GetPage(name: paidsong, page: ()=>buying())
    // GetPage(name: '/HomePage', page: ()=>HomePage())
  ];
}
