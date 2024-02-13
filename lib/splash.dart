import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'my_contacts.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        splash: CircleAvatar(
          backgroundImage: AssetImage("assets/images/cr7.png"),
          radius: 150,
        ),
        backgroundColor: Color(0XFF03071E),
        nextScreen: MyContacts(),
        splashIconSize: 350,
      ),
    );
  }
}
