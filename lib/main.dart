import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:onlypass/UI/Bottomnav.dart';
import 'package:onlypass/UI/Home.dart';
import 'UI/Authentication/Authentication.dart';
import 'UI/Authentication/Verify_code.dart';
import 'firebase_options.dart';


import 'package:onlypass/bloc/Fecilities/fecilities_bloc.dart';

import 'UI/Authentication/authentication2.dart';
import 'bloc/customer_login/login_bloc.dart';
import 'color customize/Colors.dart';

final navigatorKey = GlobalKey<NavigatorState>();


class ThemeProvider with ChangeNotifier {
  late ThemeMode _themeMode = ThemeMode.system;
  late ColorScheme _darkScheme = darkColorScheme;
  late ColorScheme _lightScheme = lightColorScheme;
  ThemeMode get themeMode => _themeMode;
  void setThemeMode(ThemeMode value) {
    _themeMode = value;
    notifyListeners();
  }
  ColorScheme get darkScheme => _darkScheme;
  void setDarkScheme(ColorScheme value) {
    _darkScheme = value;
    notifyListeners();
  }
  ColorScheme get lightScheme => _lightScheme;
  void setLightScheme(ColorScheme value) {
    _lightScheme = value;
    notifyListeners();
  }
}

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );



  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(designSize: const Size(392, 852),
        builder: (BuildContext context, Widget? child) {
          SystemChrome.setPreferredOrientations([
            DeviceOrientation.portraitUp,
            DeviceOrientation.portraitDown,
          ]);
          return
            MultiBlocProvider(
              providers: [
                BlocProvider(create: (context) => FecilitiesBloc(),),
                BlocProvider(create: (context) => LoginBloc(),)
               ],
              child: MaterialApp(debugShowCheckedModeBanner: false,
                title: 'Onlypass',
                theme: ThemeData(
                  useMaterial3: true,
                  colorScheme: darkColorScheme ,
                  fontFamily: 'Montserrat',



                ),
                darkTheme: ThemeData(
                  useMaterial3: true,
                    colorScheme: lightColorScheme,
                  fontFamily: 'Montserrat',
                ),

                themeMode: ThemeMode.light,
                home: const LogInPage(),


                  navigatorKey: navigatorKey,
                  routes:
                  {
                    // '/Notification_Screen': (context)=> const Notification_Screen(),
                  }
              ),
            );
        });
  }
}