import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  BottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: GNav(
        color: Colors.grey.shade300,
        activeColor: Colors.white,
        tabActiveBorder: Border.all(color: Colors.grey.shade900),
        tabBackgroundColor: Colors.grey.shade900,
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 16,
        onTabChange: (value) => onTabChange!(value),
        tabs: const [
          GButton(
            icon: Icons.home,
            text: "Shop",
            textStyle: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.white
            ),
            gap: 2,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), 
          ),
          GButton(
            icon: Icons.person,
            text: "Profile",
            textStyle: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.white
            ),
            gap: 2,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          ),
          GButton(
            icon: Icons.logout,
            text: "Log Out",
            textStyle: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.white
            ),
            gap: 2,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          ),
        ]
      ),
    );
  }
}