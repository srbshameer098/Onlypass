import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:onlypass/UI/splash/splash%20service.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Splash splash = Splash();

  @override
  void initState() {
    super.initState();
    splash.islogin(context);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Image.asset(
          'assets/icons/imgLog.png',
          width: 430.w,
          height: 1000.h,
          fit: BoxFit.cover,
        ),
        Positioned(
          top: 280.h,
          child: Image.asset(
            'assets/icons/Frame 23.png',
            alignment: Alignment.center,
            height: 175.h,
            width: 390.w,
          ),
        ),
      ],
    );
  }
}