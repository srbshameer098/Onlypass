import 'dart:async';

import 'package:firebase/Auth/login_screen.dart';
import 'package:firebase/UI/Home/upload_image.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SplashServices {
  void isLogin(BuildContext context) {
    final auth = FirebaseAuth.instance;

    final user = auth.currentUser;

    if (user != null) {
      Timer(
          const Duration(seconds: 2),
          () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => const HomePage()))
      );
    } else {
      Timer(
          const Duration(seconds: 2),
          () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => const HomePage()))
      );
    }
  }
}
