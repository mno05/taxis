
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:taxis/Vue/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Taxis',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFFF0AB3B),
        primarySwatch: Colors.teal,
      ),
      home: const SplashCreen(),
    );
  }
}

class SplashCreen extends StatelessWidget {
  const SplashCreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        duration: 3000,
        splash: Column(children: [
          Image.asset(
            "img/logo.png",
            height: 50,
          ),
          Text(
            "Votre partenaire",
            
            style: TextStyle(
              color: Colors.teal,
              fontWeight: FontWeight.bold,
            ),
          ),
        ]),
        splashIconSize: MediaQuery.of(context).size.height * 0.12,
        nextScreen: HomePage(),
        splashTransition: SplashTransition.fadeTransition,
        // pageTransitionType: pageTransitionType.size,
        backgroundColor: Colors.white);
    ;
  }
}
