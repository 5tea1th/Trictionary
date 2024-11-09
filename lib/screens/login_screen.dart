import 'package:flutter/material.dart';
import 'package:trictionary/screens/questions.dart';
import '../constants.dart';
import '../usedWidgets/roundedButton.dart';

class LoginScreen extends StatefulWidget{
  static String id = 'login_screen';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.7), BlendMode.dstATop),
          image: AssetImage('images/background_login.jpeg'),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea( // Added SafeArea for better notch/status bar handling
          child: Center(
            child: SingleChildScrollView( // Added SingleChildScrollView to prevent overflow
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height * 0.1), // Adjust spacing here
                    Text(
                      "TRICTIONARY",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 65.0,
                        fontFamily: 'Anton',
                        letterSpacing: 4.0,
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.1), // Adjust spacing here
                    TextField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.emailAddress,decoration: kInputDecoration.copyWith(hintText: 'Email'),
                    ),
                    TextField(
                      textAlign: TextAlign.center,
                      obscureText: true,
                      decoration: kInputDecoration.copyWith(hintText: 'Password'),
                    ),
                    RoundedButton(
                      buttonColor: Colors.white,
                      buttonFunction: () {
                        Navigator.popAndPushNamed(context, QuestionPage.id);
                      },
                      buttonText: 'Login',
                    ),
                    SizedBox(height: 20), // Adjust spacing here
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Or Login With",
                          style: TextStyle(color: Colors.white60),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            MaterialButton(
                              onPressed: () {},
                              child: Text(
                                'Google',
                                style: TextStyle(color: Colors.black),
                              ),
                              minWidth: 150.0,
                              color: Colors.white60,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            MaterialButton(
                              onPressed: () {},
                              child: Text(
                                'Facebook',
                                style: TextStyle(color: Colors.black),
                              ),
                              color: Colors.white60,
                              minWidth: 150.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
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
    );
  }
}