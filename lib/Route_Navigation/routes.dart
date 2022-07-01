import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tunesevenui/Homepages/Home_Page.dart';
import 'package:tunesevenui/screen/Main%20Page/Initial_Pages/Splash_Screen.dart';
import 'package:tunesevenui/screen/login%20and%20signup/Signup.dart';
import '../Homepages/navigation_menu.dart';
import '../screen/Main Page/Artist/Artist_Page.dart';
import '../screen/Main Page/Artist/Artist_List.dart';
import '../screen/Main Page/Music_Player.dart';
import '../screen/Main Page/Playlist_Detail.dart';
import '../screen/Main Page/Playlist_Detail_01.dart';
import '../screen/Main Page/Initial_Pages/Get_Started.dart';
import '../screen/Main Page/Initial_Pages/Welcome_Screen.dart';
import '../Homepages/Home_Page_Library.dart';
import '../screen/login and signup/Login.dart';
import '../screen/song payment/Buying_page.dart';

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
    GetPage(name: musicplayers, page: () => Music_Player()),
    GetPage(name: artistsdetails, page: () => Artist_Page()),
    GetPage(name: paidsong, page: ()=> buying())

    // GetPage(name: '/HomePage', page: ()=>HomePage())
  ];
}
