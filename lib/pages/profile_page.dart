import 'package:flutter/material.dart';
import 'package:flutter_app/pages/edit_profile_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
            
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('lib/images/moore_logo_bw.png'),
              ),
              const SizedBox(height: 16),
              const Text(
                "Muhammad Nur Hadi",
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                "5210411163",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: "Poppins",
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 20),

            
              Expanded(
                child: ListView(
                  children: <Widget>[
                    ListTile(
                      leading: const Icon(Icons.edit_rounded, color: Color.fromRGBO(33, 33, 33, 1),),
                       title: const Text(
                        'Edit Profile',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const EditProfilePage(),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.shopping_cart,
                        color: Color.fromRGBO(33, 33, 33, 1),
                      ),
                      title: const Text(
                        'Orders',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      onTap: () {
                      
                      },
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.payment,
                        color: Color.fromRGBO(33, 33, 33, 1),
                      ),
                      title: const Text(
                        'Payment Methods',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      onTap: () {
                      
                      },
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.notifications,
                        color: Color.fromRGBO(33, 33, 33, 1),
                      ),
                      title: const Text(
                        'Notifications',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      onTap: () {
                      
                      },
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.settings,
                        color: Color.fromRGBO(33, 33, 33, 1),
                      ),
                      title: const Text(
                        'Settings',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      onTap: () {
                      
                      },
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.help,
                        color: Color.fromRGBO(33, 33, 33, 1),
                      ),
                      title: const Text(
                        'Help Center',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      onTap: () {
                      
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
