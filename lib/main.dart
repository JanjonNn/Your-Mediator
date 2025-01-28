import 'package:flutter/material.dart';
import 'package:your_mediator/SplashScreen.dart';

import 'HomeScreen.dart';
import 'LoginScreen.dart';
import 'SignupScreen.dart';
import 'WelcomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/WelcomeScreen': (context) => WelcomeScreen(),
        'Loginscreen': (context) => Loginscreen(),
        'Homescreen': (context) => Homescreen(),

        'SignupScreen': (context) => SignupScreen(),

      },


    );
  }
}
