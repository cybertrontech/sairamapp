import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tunesevenui/Homepages/Home_Page.dart';
import 'package:tunesevenui/screen/Main%20Page/MainAlbum.dart';
import 'package:tunesevenui/screen/Main%20Page/Main Artist.dart';
import 'package:tunesevenui/screen/Main%20Page/Discography.dart';

import 'package:tunesevenui/screen/Main%20Page/My%20Playlist%20Detail.dart';
import 'package:tunesevenui/screen/Main%20Page/My%20Playlist.dart';
import 'package:tunesevenui/screen/Main%20Page/Playlist%20Detail%20%E2%80%93%201.dart';
import 'package:tunesevenui/screen/Main%20Page/UnknownRoutePage.dart';
import 'package:tunesevenui/screen/Main%20Page/get_started.dart';
import 'package:tunesevenui/screen/Main%20Page/music%20player.dart';
import 'package:tunesevenui/screen/Main%20Page/splash.dart';
import 'package:tunesevenui/screen/Main%20Page/splash.dart';
import 'package:tunesevenui/screen/Main%20Page/welcome_screen.dart';
import 'package:tunesevenui/screen/Main%20Page/your%20library.dart';
import 'package:tunesevenui/screen/Ui/seek%20bar.dart';
import 'package:tunesevenui/screen/login%20and%20signup/Login.dart';

import 'package:tunesevenui/screen/song%20payment/Payment%20Done.dart';
import 'package:tunesevenui/screen/song%20payment/buying.dart';
import 'Homepages/Home_Page_Album.dart';
import 'Homepages/Home_Page_Artists.dart';
import 'Homepages/navigation_menu.dart';
import 'Route_Navigation/routes.dart';
import 'screen/Main Page/splash.dart';
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
      initialRoute: RoutesClass.getHomeRoute,
      getPages: RoutesClass.route,
      // home: musicplayer());
    );
  }
}
