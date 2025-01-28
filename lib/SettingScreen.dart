import 'package:flutter/material.dart';
import 'package:your_mediator/AddFlatScreen.dart';
import 'package:your_mediator/WelcomeScreen.dart';
import 'ChangePassword.dart';
import 'ContactUsScreen.dart';
import 'EditProfile.dart';
import 'HomeScreen.dart';
import 'TermsAndServiceScreen.dart';
import 'UserProfileScreen.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  int _currentIndex = 3;

  final List<Widget> _screens = [
    Homescreen(),
    ContactUsScreen(),
    Addflatscreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2F05AE),
      appBar: AppBar(
        backgroundColor: const Color(0xFF2F05AE),
        title: const Text(
          'Your Mediator',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        leading: const Icon(Icons.arrow_back, color: Colors.white),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            top: 30,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(70),
                topRight: Radius.circular(70),
              ),
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Center(
                      child: Image.asset(
                        height: 150,
                        'assets/images/settings.png',
                      ),
                    ),
                    const SizedBox(height: 20),
                    _buildListTile(
                      icon: Icons.person,
                      color: Colors.black,
                      text: 'Personal Profile',
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UserProfileScreen(),
                        ),
                      ),
                    ),
                    _buildListTile(
                      icon: Icons.lock,
                      color: Colors.blue,
                      text: 'Change Password',
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Changepassword(),
                        ),
                      ),
                    ),
                    _buildListTile(
                      icon: Icons.article,
                      color: Colors.purple,
                      text: 'Terms and Service',
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Termsandservicescreen(),
                        ),
                      ),
                    ),
                    _buildListTile(
                      icon: Icons.edit,
                      color: Colors.black,
                      text: 'Edit Profile',
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Editprofile(),
                        ),
                      ),
                    ),
                    _buildListTile(
                      icon: Icons.logout,
                      color: Colors.red,
                      text: 'Log Out',
                      textColor: Colors.red,
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WelcomeScreen(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Color(0xFF2F05AE),
        unselectedItemColor: Colors.black,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => _screens[index],
            ),
          );
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }

  Widget _buildListTile({
    required IconData icon,
    required Color color,
    required String text,
    required VoidCallback onTap,
    Color textColor = Colors.black,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: ListTile(
        leading: Icon(icon, color: color),
        title: Text(
          text,
          style: TextStyle(color: textColor),
        ),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      ),
    );
  }
}
