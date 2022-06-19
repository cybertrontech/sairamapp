import 'package:flutter/material.dart';
import 'package:tunesevenui/screen/login%20and%20signup/utils/textfeild.dart';

import '../../Homepages/navigation_menu.dart';
import '../../colors/all colors.dart';
import '../../images/all img.dart';


class NavProps {
  final String phone;
  final String email;

  NavProps({required this.phone, required this.email});
}

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
// Form
// TextField
// TextFormField
  bool hidePassword = true;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final phoneContoller = TextEditingController();
  String email = '';
  final formKey = GlobalKey<FormState>();
  FocusNode emailFocus = FocusNode();
  FocusNode phoneNoFocus = FocusNode();

  onLogin() {
    // var email = emailController.text;
    // var password = passwordController.text;
    // emailController.clear();
    // emailController.text = "some text";

    FocusScope.of(context).unfocus();

    if (formKey.currentState != null) {
      formKey.currentState!.save();

      final isValid = formKey.currentState!.validate();

      if (!isValid) {
        return;
      }
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
                          CommonTextField(
                            focusNode: emailFocus,
                            controller: emailController,
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            hintText: "Enter your email",
                            prefixIcon: Icon(Icons.email),
                          ),
                          SizedBox(height: 15),
                          CommonTextField(
                            hintText: "Enter password",
                            controller: passwordController,
                            obscureText: hidePassword,
                            validator: (val) {
                              if (val == null) {
                                return "Password must be valid";
                              }
                              if (val.length < 8) {
                                return "Password must be 8 characters long";
                              }
                            },
                            prefixIcon: Icon(Icons.lock),
                            suffixIcon: InkWell(
                                onTap: () {
                                  hidePassword = !hidePassword;
                                  setState(() {});
                                },
                                child: Icon(hidePassword == true
                                    ? Icons.visibility
                                    : Icons.visibility_off)),
                          ),
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
                            onPressed: () {
                               Navigator.push(
                                 context,
                                 MaterialPageRoute(
                                     builder: (context) => NavMenu(title: "")),
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
                                "Don't have an account?",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontFamily: 'Louis George Cafe',
                                    fontWeight: FontWeight.w800),
                              ),
                              GestureDetector(
                                onTap: () {},
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
