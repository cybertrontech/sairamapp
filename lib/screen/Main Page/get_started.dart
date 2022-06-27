import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tunesevenui/images/all%20img.dart';
import 'package:tunesevenui/screen/login%20and%20signup/Login.dart';

import '../../colors/all colors.dart';


class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {

  final numcontroller=TextEditingController();
  final formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        // physics: NeverScrollableScrollPhysics(),
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
                      height: 160,
                      width: 160,
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
                          fontWeight: FontWeight.w900),
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
                          SizedBox(
                            height: 20,
                          ),
                          Form(
                            autovalidateMode: AutovalidateMode.disabled,
                            key: formKey,
                            child: TextFormField(
                              controller: numcontroller,
                              autofocus: true,
                              validator: (value){
                                  if (value == null || value.trim().isEmpty) {
                                    return 'Please enter your numbers';
                                  }
                                  if (value.trim().length < 10) {
                                    return 'Number must be at least 10 Number in length';
                                  }
                                  // Check if the entered email has the right format
                                  return null;
                                //s};
                              },
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
                                  hintText: "+977",
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
                          ),
                          SizedBox(height: 20,),
                          MaterialButton(
                            onPressed: () {
                              if (formKey.currentState!=null){
                                formKey.currentState!.save();
                                final isValid= formKey.currentState!.validate();
                                if(!isValid){
                                  return;
                                }
                              }
                              Get.offAndToNamed('/login');
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) =>  testlogin()),
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
    );
  }
}
