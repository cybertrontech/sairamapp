import 'package:get/get.dart';
import 'package:tunesevenui/Homepages/home_page.dart';
import 'package:tunesevenui/screen/Main%20Page/splash.dart';
import '../screen/Main Page/get_started.dart';
import '../screen/Main Page/welcome_screen.dart';
import '../screen/login and signup/Login.dart';

class RoutesClass{

  static String start ="/";
  static String getHomeRoute()=>"/";

    static List<GetPage> route=[
      GetPage(name: '/', page: ()=> SplashScreen()),
      GetPage(name: '/welcome', page: ()=> WelcomeScreen()),
      GetPage(name: '/get_started',page: ()=> GetStarted()),
      GetPage(name: '/login', page: ()=> testlogin()),
      // GetPage(name: '/HomePage', page: ()=>HomePage())



    ];

}