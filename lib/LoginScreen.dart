import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:your_mediator/HomeScreen.dart';
import 'ForgetScreen.dart';
import 'SignupScreen.dart';
class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2F05AE),
      appBar: AppBar(
        backgroundColor: Color(0xFF2F05AE),
        centerTitle: true,
        title: Text(
          "Your Mediator",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(70),
            topRight: Radius.circular(70),
          ),
          color: Colors.white,
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: Column(
              children: [
                Image.asset(
                  width: 150,
                  "assets/images/login.png",
                ),
                Form(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xFFF2EFEF),
                      ),
                      padding: EdgeInsets.all(16),
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: "User Name",
                              prefixIcon: Icon(Icons.person),
                              prefixIconColor: Color(0xFF5F5F5F),
                              border: UnderlineInputBorder(),
                            ),
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: "Password",
                              suffixStyle: TextStyle(
                                color: Color(0xFF5F5F5F),
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                              prefixIcon: Icon(Icons.lock),
                              prefixIconColor: Color(0xFF5F5F5F),
                              border: UnderlineInputBorder(),
                            ),
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignupScreen(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 250),
                    child: Text(
                      "Don’t have an account?",
                      style: TextStyle(color: Color(0xFFBEBEBE), fontSize: 16),
                    ),
                  ),
                ),
                SizedBox(height: 2),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Forgetscreen(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 275),
                    child: Text(
                      "Forget Password?",
                      style: TextStyle(color: Color(0xFFBEBEBE), fontSize: 16),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Homescreen(),
                      ),
                    );
                  },
                  child: Text(
                    "Log In",
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
      ),
    );
  }
}
