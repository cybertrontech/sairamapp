import 'package:get/get.dart';
import 'package:tunesevenui/Homepages/home_page.dart';
import 'package:tunesevenui/screen/Main%20Page/splash.dart';
import 'package:tunesevenui/screen/login%20and%20signup/Signup.dart';
import '../Homepages/navigation_menu.dart';
import '../screen/Main Page/get_started.dart';
import '../screen/Main Page/welcome_screen.dart';
import '../screen/login and signup/Login.dart';

class RoutesClass{

  static String start ="/";
  static String getHomeRoute="/";
  static String wellcome="/welcome";
  static String getstarted="/get_started";
  static String login="/login";
  static String register="/register";
  static String navmenu="/homepage";

    static List<GetPage> route=[
      GetPage(name: '/', page: ()=> SplashScreen()),
      GetPage(name: wellcome, page: ()=> WelcomeScreen()),
      GetPage(name: getstarted,page: ()=> GetStarted()),
      GetPage(name: login, page: ()=> testlogin()),
      GetPage(name: navmenu, page: ()=> NavMenu()),
      GetPage(name: register, page: ()=>Signup()),
      // GetPage(name: '/HomePage', page: ()=>HomePage())
    ];
}