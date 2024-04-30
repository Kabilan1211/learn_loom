import 'package:flutter/material.dart';
import 'package:learn_loom/Constants/constant.dart';
import 'package:learn_loom/Constants/themeData.dart';
import 'package:learn_loom/Pages/splash.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: darkThemeTrue ? lightTheme : darkTheme ,
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
