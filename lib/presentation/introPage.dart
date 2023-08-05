import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:table_booking/presentation/loginPage.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      animationDuration: Duration(seconds: 2),
      splash: "assets/images/minto-high-resolution-color-logo (1).png",
      nextScreen: LoginPage(),
      splashIconSize: 300,
    );
  }
}
