import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tunesevenui/images/all%20img.dart';
import 'package:get/route_manager.dart';
import '../../../colors/all colors.dart';
import 'Get_Started.dart';
import 'package:tunesevenui/Route_Navigation/routes.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            width: width,
            alignment: Alignment.topRight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    tune7logoweb,
                    height: 160,
                    width: 160,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 140,),
          Container(child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Listen to",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontFamily: 'Louis George Cafe',
                      fontWeight: FontWeight.w800),
                ),
                SizedBox(height: 3,),
                Text(
                  "Nepalese Musics",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontFamily: 'Louis George Cafe',
                      fontWeight: FontWeight.w800),
                ),
                SizedBox(height: 20,),

                Text(
                  "TuneSeven is a Nepalese Music & Podcast \nStreaming app. Listen to your favorite \nNepalese Creator.",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontFamily: 'Louis George Cafe',
                      fontWeight: FontWeight.w800),
                ),
                SizedBox(height: 45,),
                Center(
                  child: MaterialButton(
                    onPressed: () {
                      Get.offAndToNamed(RoutesClass.getstarted);
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => const GetStarted()),
                      // );
                    },
                    color: Colors.blue,
                    minWidth: 350,
                    height: 55,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Louis George Cafe',
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontFamily: 'Louis George Cafe',
                          fontWeight: FontWeight.w800),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        '  Sign in',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.blue,
                            fontFamily: 'Louis George Cafe',
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),),
        ],
      ),
    );
  }
}
