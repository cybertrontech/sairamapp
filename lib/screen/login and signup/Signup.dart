import 'package:flutter/material.dart';
import 'package:tunesevenui/screen/login%20and%20signup/Login.dart';

import '../../Homepages/navigation_menu.dart';
import '../../colors/all colors.dart';
import '../../images/all img.dart';


class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Signup> {
  // Define a key to access the form
  final _formKey = GlobalKey<FormState>();

  String _userEmail = '';
  String _userName = '';
  String _password = '';
  String _confirmPassword = '';

  void _trySubmitForm() {
    final bool? isValid = _formKey.currentState?.validate();
    if (isValid == true) {
      debugPrint('Everything looks good!');
      debugPrint(_userEmail);
      debugPrint(_userName);
      debugPrint(_password);
      debugPrint(_confirmPassword);
    }
  }
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmController =TextEditingController();
  TextEditingController usernameController = TextEditingController();
  bool hidepassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                // Image.asset(tune7logoweb,width: 120,height: 140,),
                Padding(
                  padding: EdgeInsets.only(
                      top:50,
                      //   top: MediaQuery.of(context).size.height /200,
                      left: MediaQuery.of(context).size.width / 500,
                      right: MediaQuery.of(context).size.width / 500),
                  child: Expanded(
                    child: Container(
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        margin: const EdgeInsets.symmetric(horizontal: 35),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            children: [
                              Text("Welcome",style: TextStyle(fontSize: 35,fontWeight: FontWeight.w600),),
                              SizedBox(height: 6,),
                              Form(
                                  key: _formKey,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      /// Username
                                      TextFormField(
                                        controller: usernameController,
                                        maxLines: 1,
                                        maxLength: 10,
                                        textInputAction: TextInputAction.next,
                                        decoration:
                                         InputDecoration(
                                            border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(14)
                                            ),
                                            labelText: 'Username'),
                                        validator: (value) {
                                          if (value == null || value.trim().isEmpty) {
                                            return 'This field is required';
                                          }
                                          if (value.trim().length < 4) {
                                            return 'Username must be at least 4 characters in length';
                                          }
                                          // Return null if the entered username is valid
                                          return null;
                                        },
                                        onChanged: (value) => _userName = value,
                                      ),
                                      /// email
                                      TextFormField(
                                        controller: emailController,
                                        textInputAction: TextInputAction.next,
                                        decoration:  InputDecoration(
                                            border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(14)
                                            ),
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
                                      SizedBox(height: 7,),

                                      /// Password
                                      TextFormField(
                                        controller: passwordController,
                                        textInputAction: TextInputAction.next,
                                        decoration:
                                         InputDecoration(border: OutlineInputBorder(
                                             borderRadius: BorderRadius.circular(14)
                                         ),
                                            labelText: 'Password',
                                        prefixIcon: Icon(Icons.lock),
                                        suffixIcon: GestureDetector(
                                          onTap: (){
                                            hidepassword=!hidepassword;
                                            setState((){});
                                          },
                                            child: Icon(hidepassword==true?Icons.visibility:Icons.visibility_off_outlined))
                                        ),
                                        obscureText: hidepassword,
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
                                      SizedBox(height: 7,),

                                      /// Confirm Password
                                      TextFormField(
                                        textInputAction: TextInputAction.next,
                                        decoration:  InputDecoration(
                                            border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(14)
                                            ),
                                            labelText: 'Confirm Password',
                                        prefixIcon: Icon(Icons.lock),
                                          suffixIcon: GestureDetector(
                                            onTap: (){
                                              hidepassword=!hidepassword;
                                              setState((){});
                                            },
                                              child: Icon(hidepassword==true?Icons.visibility:Icons.visibility_off_outlined))
                                        ),
                                        obscureText: hidepassword,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'This field is required';
                                          }
                                          if (value != _password) {
                                            return 'Confimation password does not match the entered password';
                                          }
                                          return null;
                                        },
                                        onChanged: (value) => _confirmPassword = value,
                                      ),
                                      const SizedBox(height: 20),
                                      Container(
                                          alignment: Alignment.center,
                                          child:  MaterialButton(
                                            onPressed: _trySubmitForm,
                                            color: Colors.blue,
                                            minWidth: 320,
                                            height: 55,
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(30)),
                                            child: Text(
                                              "Sign up",
                                              style: TextStyle(
                                                  color: textcolor,
                                                  fontSize: 23,
                                                  fontWeight: FontWeight.w800),
                                            ),
                                          )
                                      ),
                                      SizedBox(height: 15,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Do you have an account?",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.black,
                                                fontFamily: 'Louis George Cafe',
                                                fontWeight: FontWeight.w800),
                                          ),
                                          GestureDetector(
                                            onTap: (){
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: (context) =>  testlogin()),
                                              );                                    },
                                            child: Text(
                                              ' Login',
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
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],

        ),
      ),
    );
  }
}