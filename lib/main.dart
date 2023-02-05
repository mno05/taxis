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
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
          splash: "img/logo.png",
          splashIconSize: MediaQuery.of(context).size.height*0.8,
          nextScreen: HomePage (),
          splashTransition: SplashTransition.fadeTransition,
          // pageTransitionType: PageTransitionType.size,
          backgroundColor: Colors.black);;
  }
}