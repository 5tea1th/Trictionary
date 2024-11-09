import 'package:flutter/material.dart';
import 'package:trictionary/screens/itenary.dart';
import 'package:trictionary/screens/login_screen.dart';
import 'package:trictionary/screens/questions.dart';
import 'package:trictionary/screens/loading_screen.dart';
import 'screens/home_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/like_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      initialRoute: LoadingScreen.id,
      routes: {
        HomeScreen.id: (context)=> HomeScreen(),
        QuestionPage.id: (context) => QuestionPage(),
        LoadingScreen.id : (context) => LoadingScreen(),
        ProfileScreen.id : (context) => ProfileScreen(),
        LoginScreen.id : (context) => LoginScreen(),
        LikeScreen.id :(context)=> LikeScreen(),
        ItineraryPage.id : (context)=> ItineraryPage(),
      },
    );
  }
}

