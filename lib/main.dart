import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tunesevenui/Homepages/Home_Page.dart';
import 'package:tunesevenui/screen/Main%20Page/MainAlbum.dart';
import 'package:tunesevenui/screen/Main%20Page/Artist/Artist_Page.dart';
import 'package:tunesevenui/screen/Main%20Page/Initial_Pages/Get_Started.dart';
import 'package:tunesevenui/screen/Main%20Page/Initial_Pages/Splash_Screen.dart';
import 'package:tunesevenui/screen/Main%20Page/Initial_Pages/Splash_Screen.dart';
import 'package:tunesevenui/screen/Main%20Page/Initial_Pages/Welcome_Screen.dart';
import 'package:tunesevenui/screen/Ui/seek%20bar.dart';
import 'package:tunesevenui/screen/login%20and%20signup/Login.dart';
import 'package:tunesevenui/screen/song%20payment/Payment%20Done.dart';
import 'package:tunesevenui/screen/song%20payment/Buying_page.dart';
import 'Homepages/Home_Page_Album.dart';
import 'Homepages/Home_Page_Artists.dart';
import 'Homepages/navigation_menu.dart';
import 'Route_Navigation/routes.dart';
import 'screen/Main Page/Initial_Pages/Splash_Screen.dart';
import 'screen/login and signup/Signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // initialRoute: RoutesClass.getHomeRoute,
      // getPages: RoutesClass.route,
      home: HomeWidget());
  }
}
