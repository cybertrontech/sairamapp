import 'package:flutter/material.dart';
import 'package:tunesevenui/images/all%20img.dart';

import '../../colors/all colors.dart';
import '../login and signup/loginpage.dart';


class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            children: [
            Container(
                  width: width,
                  alignment: Alignment.topRight,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                       tune7logoweb,
                        height: 200,
                        width: 200,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 60,),
                    Padding(
                      padding: const EdgeInsets.only(right: 240),
                      child: Text(
                        "Get Started",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 30,
                            color: textcolor,
                            fontWeight: FontWeight.w800),
                ),
                    ),
              Container(
                width: width,
                child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height,
                        decoration: const BoxDecoration(
                            color:  Color.fromRGBO(15, 15, 15, 100),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            )),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0, top: 20),
                              child: Row(
                                children: [
                                  Text(
                                    "Please enter the mobile\nphone number",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 30,
                                        color: textcolor,
                                        fontFamily: 'Louis George Cafe',
                                        fontWeight: FontWeight.w800),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 15.0,
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    "Phone number",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: textcolor,
                                        fontFamily: 'Louis George Cafe',
                                        fontWeight: FontWeight.w800),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextField(
                              style: TextStyle(
                                  color: textcolor,
                                  fontFamily: 'Louis George Cafe'),
                              keyboardType: TextInputType.number,
                              maxLength: 10,
                              decoration: InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black54),
                                  ),
                                  counter: Offstage(),
                                  hintText: "+977 ",
                                  hintStyle: TextStyle(
                                      color: textcolor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 23,
                                      fontFamily: 'Louis George Cafe'),
                                  prefixIcon: Align(
                                    widthFactor: 1.0,
                                    heightFactor: 1.0,
                                    child: Icon(
                                      Icons.phone,
                                      color: textcolor,
                                    ),
                                  )
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            MaterialButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Loginpage()),
                                );
                              },
                              color: Colors.blue,
                              minWidth: 350,
                              height: 55,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              child: Text(
                                "Get Started",
                                style: TextStyle(
                                    color: textcolor,
                                    fontSize: 20,
                                    fontFamily: 'Louis George Cafe',
                                    fontWeight: FontWeight.w800),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Already have an account?",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: textcolor,
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
                      )
                    ]),
              ),
            ],
          ),

        ),
      ),
    );
  }
}
