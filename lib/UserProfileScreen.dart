import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'EditProfile.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2F05AE),
      appBar: AppBar(
        backgroundColor: const Color(0xFF2F05AE),
        centerTitle: true,
        title: const Text(
          "Your Mediator",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      body: Stack(
        children: [
          Container(
            color: const Color(0xFF2F05AE),
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(70),
                topRight: Radius.circular(70),
              ),
              color: Colors.white,
            ),
            child: SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image.asset(
                        "assets/images/user profile.png",
                        width: 150,
                      ),
                    ),
                    const SizedBox(height: 15),
                    const ListTile(
                      leading: Icon(Icons.person, color: Color(0xFF2F05AE)),
                      title: Text(
                        'User Name:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('John Doe'),
                    ),
                    const Divider(),
                    const ListTile(
                      leading: Icon(Icons.phone, color: Color(0xFF2F05AE)),
                      title: Text(
                        'Phone:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('+123 456 7890'),
                    ),
                    const Divider(),
                    const ListTile(
                      leading: Icon(Icons.email, color: Color(0xFF2F05AE)),
                      title: Text(
                        'E-mail:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('johndoe@example.com'),
                    ),
                    const Divider(),
                    const ListTile(
                      leading:
                          Icon(Icons.location_on, color: Color(0xFF2F05AE)),
                      title: Text(
                        'Address:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('123 Street, City'),
                    ),
                    const Divider(),
                    const ListTile(
                      leading: Icon(Icons.cake, color: Color(0xFF2F05AE)),
                      title: Text(
                        'Birth date:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text('01 Jan 1990'),
                    ),
                    const SizedBox(height: 32),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Editprofile(),
                              ),
                            );

                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF2F05AE),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 32,
                            vertical: 16,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Text(
                          'Edit Profile',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),


                    Center(
                      child: GestureDetector(
                        onTap: () {},
                        child: ListTile(
                          leading: const Icon(
                            Icons.logout,
                            color: Colors.red,
                            size: 35,
                          ),
                          title: const Text(
                            '',
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30,)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: 0,
        selectedItemColor: const Color(0xFF2F05AE),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Contact Us',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
