import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tunesevenui/screen/login%20and%20signup/utils/textfield.dart';

import '../../Homepages/navigation_menu.dart';
import '../../colors/all colors.dart';
import '../../images/all img.dart';
import 'Signup.dart';


class testlogin extends StatefulWidget {
  const testlogin({Key? key}) : super(key: key);

  @override
  State<testlogin> createState() => _LoginpageState();
}

class _LoginpageState extends State<testlogin> {

  final _formKey = GlobalKey<FormState>();

  String _userEmail = '';
  String _userName = '';
  String _password = '';
  String _confirmPassword = '';

  // This function is triggered when the user press the "Sign Up" button
  void _trySubmitForm() {
    final bool? isValid = _formKey.currentState?.validate();
    if (isValid == true) {
      debugPrint('Everything looks good!');
      debugPrint(_userEmail);
      debugPrint(_userName);
      debugPrint(_password);
      debugPrint(_confirmPassword);

      /*
      Continute proccessing the provided information with your own logic
      such us sending HTTP requests, savaing to SQLite database, etc.
      */
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height / 5,
              left: MediaQuery.of(context).size.width / 25,
              right: MediaQuery.of(context).size.width / 25),
          child: Container(
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Form(
                  autovalidateMode: AutovalidateMode.disabled,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text(
                                "Login",
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.black,
                                    fontFamily: 'Louis George Cafe',
                                    fontWeight: FontWeight.w800),
                              ),
                            ],
                          ),
                          SizedBox(height: 30),

                          SizedBox(height: 15),
                          Form(child: Column(
                            children: [
                              TextFormField(
                                decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    prefixIcon: Icon(Icons.email),
                                    labelText: 'Email'),
                                validator: (value) {
                                  if (value == null || value.trim().isEmpty) {
                                    return 'Please enter your email address';
                                  }
                                  // Check if the entered email has the right format
                                  if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                                    return 'Please enter a valid email address';
                                  }
                                  // Return null if the entered email is valid
                                  return null;
                                },
                                onChanged: (value) => _userEmail = value,
                              ),
                              SizedBox(height: 15,),
                              TextFormField(
                                decoration:
                                const InputDecoration(

                                    border: OutlineInputBorder(),
                                    prefixIcon: Icon(Icons.lock),
                                    labelText: 'Password'),

                                obscureText: true,
                                validator: (value) {
                                  if (value == null || value.trim().isEmpty) {
                                    return 'This field is required';
                                  }
                                  if (value.trim().length < 8) {
                                    return 'Password must be at least 8 characters in length';
                                  }
                                  // Return null if the entered password is valid
                                  return null;
                                },
                                onChanged: (value) => _password = value,
                              ),

                            ],
                          )),
                          SizedBox(height: 40),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: FittedBox(
                                  fit: BoxFit.fill,
                                  child: Image.asset(
                                    facebook,
                                    height: 50,
                                    width: 100,
                                  ),
                                ),
                              ),
                              FittedBox(
                                fit: BoxFit.fill,
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Image.asset(
                                    google,
                                    height: 50,
                                    width: 100,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'By clicking on "login", you accept the',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontFamily: 'Louis George Cafe',
                                    fontWeight: FontWeight.w800),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Text(
                                  'Terms and Conditions of Use.',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.blue,
                                      fontFamily: 'Louis George Cafe',
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          MaterialButton(
                            onPressed: _trySubmitForm,
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
                                "Don't have an account?",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontFamily: 'Louis George Cafe',
                                    fontWeight: FontWeight.w800),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const Signup()),
                                  );
                                },
                                child: Text(
                                  ' Register',
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
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
