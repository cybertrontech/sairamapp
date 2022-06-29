import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tunesevenui/Storage/secured_storage.dart';

import '../../Route_Navigation/routes.dart';
import '../../images/all img.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    /// Await your Future here (This function only called once after the layout is Complete)
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      checkUserLoggedInStatus();
    });

    super.initState();
  }

  checkUserLoggedInStatus() async {
    String? token = await Securestorage.getToken();
    if (token == null) {
      Get.toNamed(RoutesClass.loginScreen);
    } else {
      print("the token is $token");
      Get.offAndToNamed(RoutesClass.welcomeScreen);
      return;
    }
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
