import 'dart:io';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:packbuddy/screens/login/login_screen.dart';
import 'package:page_transition/page_transition.dart'; // อย่าลืมตัวนี้

class SplachScreen extends StatelessWidget {
  SplachScreen({super.key});

  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
      ));
    } else if (Platform.isAndroid) {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ));
    }
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: AnimatedSplashScreen(
          splash: Container(
            width: size.width,
            height: size.height,
            child: Center(
              child: Image.asset("assets/images/Logo.png"),
            ),
          ),
          splashIconSize: 150,
          backgroundColor: Colors.white,
          duration: 2000,
          splashTransition: SplashTransition.fadeTransition,
          pageTransitionType: PageTransitionType.fade,
          nextScreen: LoginScreen(),
        ),
      ),
    );
  }
}
