import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:trictionary/screens/login_screen.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});
  static const String id = 'loading_screen';

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    "TRICTIONARY",
                    style: TextStyle(
                      fontSize: 55.0,
                      fontFamily: 'Anton',
                      letterSpacing: 4.0,
                    ),
                  ).animate().scale().tint(color: Colors.blue[800]),
                ),
              ],
            ),
            const SizedBox(
              height: 25.0,
            ),
            MaterialButton(onPressed: () {Navigator.popAndPushNamed(context, LoginScreen.id);}),
          ],
        ),
      ),
    );
  }
}