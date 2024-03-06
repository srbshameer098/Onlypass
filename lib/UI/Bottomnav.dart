import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:onlypass/UI/Event.dart';
import 'package:onlypass/UI/Onlypass.dart';
import 'package:onlypass/UI/Profile.dart';

import 'Home.dart';

int currentIndex = 0;

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

final screens = [Home(), Event(), Onlypass(), Profile()];

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        showUnselectedLabels: true,
      useLegacyColorScheme: true,
        unselectedItemColor: Colors.grey.shade600,
        selectedItemColor: Colors.white,

        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          const BottomNavigationBarItem(
              icon: FaIcon(Icons.home_outlined, color: Colors.white),
              label: "Home",
              backgroundColor: Colors.black),
          const BottomNavigationBarItem(
            icon: Icon(Icons.event, color: Colors.white),
            label: "Event",
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/onlypass.png',
              width: 25.w,
              height: 25.h,
              color: Colors.white,
            ),
            label: "Onlypass",
            backgroundColor: Colors.black,
          ),
          const BottomNavigationBarItem(
              icon: Icon(Icons.perm_identity_outlined, color: Colors.white,),
              label: "Profile",
              backgroundColor: Colors.black,
          ),
        ],
      ),
      body: screens[currentIndex],
    );
  }
}
