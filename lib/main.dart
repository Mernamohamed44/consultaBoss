import 'package:flutter/material.dart';
import 'package:untitled5/core/router/router.dart';
import 'package:untitled5/features/intro/spalsh/view_splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      navigatorKey: navigatorKey,
      theme: ThemeData(
        fontFamily: 'DIN'
      ),
      home: SplashScreen(),
    );
  }
}
