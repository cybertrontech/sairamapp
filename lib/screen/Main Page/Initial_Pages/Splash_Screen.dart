import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../Route_Navigation/routes.dart';
import '../../../images/all img.dart';

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
    Future.delayed(Duration(seconds: 2), () {
      // Get.toNamed(RoutesClass.Welcome());
      Get.offAndToNamed('/welcome');
      return;
    });
  }


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
