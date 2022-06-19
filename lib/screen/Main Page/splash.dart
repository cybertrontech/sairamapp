import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../images/all img.dart';
import '../../navigation/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    checkUserLoggedInStatus();
  }

  checkUserLoggedInStatus() async {
    // final isLoggedIn = await SharedPref.getIsUserLoggedIn();
    // final user = await SharedPref.getUser();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushNamed(context, Routes.welcomeScreen);
      return;
    });
  }

  // void onInit(){
  //   checkUserLoggedInStatus();
  // }
  // checkUserLoggedInStatus(){
  //   Future.delayed(Duration(seconds: 2),(){
  //     Get.offNamed("/welcome");
  //     return;
  //   });
  // }


  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              tune7logoweb,
              height: 100,
              width: 100,
            ),
            SizedBox(height: 20),
            CircularProgressIndicator(
              strokeWidth: 4,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
