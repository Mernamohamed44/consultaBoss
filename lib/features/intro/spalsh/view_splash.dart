import 'package:flutter/material.dart';
import 'package:untitled5/common_component/logo_image.dart';
import 'package:untitled5/core/router/router.dart';
import 'package:untitled5/features/intro/welcome_screen/welcome_screen_view.dart';
import 'package:untitled5/public/style.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(
        const Duration(
          milliseconds: 3000,
        ),
        () {});
    MagicRouter.navigateTo(WelcomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: colorWhite,
        body: SafeArea(
          child: Center(
            child: LogoImage(),
          ),
        ));
  }
}
