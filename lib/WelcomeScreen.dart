

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:your_mediator/LoginScreen.dart';


class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => Welcomescreen();
}

class Welcomescreen extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 170),
          child: Column(
            children: [
              Image.asset(
                'assets/images/welcome.png',
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 40),
                child: Text(
                  " In our application your selling ,"
                  " buying and renting"
                  " process "
                  "will be easier and more secure",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>Loginscreen(),
                    ),
                  );
                },
                child: Text(
                  "Be part of our community",
                  style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Color(0xFF2F05AE),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
