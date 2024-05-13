import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:onlypass/UI/Access.dart';
import 'package:onlypass/UI/Event.dart';
import 'package:onlypass/UI/Onlypass.dart';
import 'package:onlypass/UI/Profile.dart';

import 'Home.dart';

int currentIndex = 0;

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

final screens = [
  const Home(),
  const Event(),
  const Onlypass(),
  const Access(),
  const Profile()
];

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
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/home.svg',
              width: 20.w,
              height: 20.h,
            ),
            label: "Home",
            backgroundColor: Colors.black,
            activeIcon: SvgPicture.asset(
              'assets/icons/home.svg',
              width: 25.w,
              height: 25.h,
              color: const Color(0xffffffff),
            ),
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.event, color: Colors.grey),
            label: "Event",
            backgroundColor: Colors.black,
            activeIcon: Icon(Icons.event, color: Colors.white),
          ),
          BottomNavigationBarItem(
            icon:  SvgPicture.asset(
              'assets/icons/onlypass.svg',
              width: 25.w,
              height: 25.h,

              color: Colors.grey,
            ),
            label: "Onlypass",
            backgroundColor: Colors.black,
            activeIcon: SvgPicture.asset(
              'assets/icons/onlypass.svg',
              width: 25.w,
              height: 25.h,
              color: const Color(0xffffffff),
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/code_qr.svg',
              width: 25.w,
              height: 25.h,
            ),
            label: "Access",
            backgroundColor: Colors.black,
            activeIcon: SvgPicture.asset(
              'assets/icons/code_qr.svg',
              width: 25.w,
              height: 25.h,
              color: const Color(0xffffffff),
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/Profile.svg',
              height: 20.h,
            ),
            label: "Profile",
            backgroundColor: Colors.black,
            activeIcon: SvgPicture.asset(
              'assets/icons/Profile.svg',
              width: 25.w,
              height: 25.h,
              color: const Color(0xffffffff),
            ),
          ),
        ],
      ),
      body: screens[currentIndex],
    );
  }
}
