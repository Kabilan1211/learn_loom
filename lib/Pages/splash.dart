import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:learn_loom/Pages/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: const Text("Welcome", style: TextStyle(color: Colors.black, fontSize: 70, fontFamily: 'Roboto', fontWeight: FontWeight.bold),),
      backgroundColor: Colors.white,
      splashTransition: SplashTransition.fadeTransition,
      duration: 4,
      centered: true,

      nextScreen: const MyHomePage());
  }
}