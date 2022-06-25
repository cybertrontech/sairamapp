import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tunesevenui/screen/login%20and%20signup/utils/textfield.dart';

import '../../Homepages/home_page.dart';
import '../../Homepages/navigation_menu.dart';
import '../../colors/all colors.dart';
import '../../images/all img.dart';
import 'SecureStorage/securestorage.dart';
import 'Signup.dart';

class testlogin extends StatefulWidget {

  @override
  State<testlogin> createState() => _LoginpageState();
}

class _LoginpageState extends State<testlogin> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool hidepassword = true;


  // This function is triggered when the user press the "Sign Up" button
  void LoginApi() async {
    try {
      Map<String, String> body = {
        'email': emailController.text,
        'password': passwordController.text
      };
      Response response = await post(
          Uri.parse('https://sairambackend.herokuapp.com/login'),
          body: jsonEncode(body),
          headers: {"Content-Type": "application/json"});
      if (response.statusCode == 200) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(backgroundColor:Colors.cyan,
            content: Text("SUCCESS YOUR LOGIN IS SUCCESSFULL WAIT A MIN.",
          style: TextStyle(
              color: Colors.black
          ),
        )
        ));
        var data = jsonDecode(response.body.toString());
        print(data['token']);
        print('account created successfully');
        Future.delayed(Duration(seconds: 4),(){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomePage()));
        });
      }else{
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
                backgroundColor: Colors.blue,
                content: Text("username or password is inncorrect",
                  style: TextStyle(
                      color: Colors.black
                  ),
                )));
      }
    } catch (e) {
      print(e.toString());
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.blue,
              content: Text("username or password inncorrect",
        style: TextStyle(
            color: Colors.black
        ),
      )));
    }
  }
  final formKey=GlobalKey<FormState>();
  Future init()async{
    final name = await UserSecureStorage.getEmailname() ??'';
    setState((){
      this.emailController.text=name;
    });
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
                    child: ListView(
                      // physics: NeverScrollableScrollPhysics(),
                      children: [
                        Column(
                          children: [
                            SizedBox(height: 5),
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
                            SizedBox(height: 15),
                            Form(
                                autovalidateMode: AutovalidateMode.disabled,
                                key: formKey,
                                child: Column(
                                  children: [
                                    TextFormField(
                                      keyboardType: TextInputType.emailAddress,// maxLength: 10,
                                      autofocus: true,
                                      maxLines: 1,
                                      controller: emailController,
                                      textInputAction: TextInputAction.next,
                                      decoration:  InputDecoration(
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(14)
                                          ),
                                          prefixIcon: Icon(Icons.email),
                                          labelText: 'Email'),
                                      validator: (value) {
                                        if (value == null || value.trim().isEmpty) {
                                          return 'Please enter your email address';
                                        }
                                        // Check if the entered email has the right format
                                        if (!RegExp(r'\S+@\S+\.\S+')
                                            .hasMatch(value)) {
                                          return 'Please enter a valid email address';
                                        }
                                        // Return null if the entered email is valid
                                        return null;
                                      },
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    ///password
                                    TextFormField(
                                      keyboardType: TextInputType.visiblePassword,
                                      controller: passwordController,
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(14)
                                          ),
                                          prefixIcon: Icon(Icons.lock),
                                          suffixIcon: GestureDetector(
                                              onTap:(){
                                                hidepassword=!hidepassword;
                                                setState((){});
                                              },
                                              child: Icon(hidepassword==true?Icons.visibility:Icons.visibility_off_outlined)),
                                          labelText: 'Password'),
                                      obscureText: hidepassword,
                                      validator: (value) {
                                        if (value == null || value.trim().isEmpty) {
                                          return 'This field is required';
                                        }
                                        if (value.trim().length < 4) {
                                          return 'Password must be at least 8 characters in length';
                                        }
                                        // Return null if the entered password is valid
                                        return null;
                                      },
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
                              onPressed: ()async{
                                await UserSecureStorage.setUsername(emailController.text);
                                if (formKey.currentState!=null){
                                  formKey.currentState!.save();
                                  final isValid= formKey.currentState!.validate();
                                  if(!isValid){
                                    return;
                                  }
                                  LoginApi();
                                }
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
                                      MaterialPageRoute(
                                          builder: (context) => const Signup()),
                                    );
                                  },
                                  child: Text(
                                    ' Registe',
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
                      ],
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
