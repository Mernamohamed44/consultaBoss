import 'package:flutter/material.dart';
import 'package:untitled5/common_component/custom_button.dart';
import 'package:untitled5/common_component/custom_text.dart';
import 'package:untitled5/common_component/logo_image.dart';
import 'package:untitled5/core/router/router.dart';
import 'package:untitled5/features/auth/login_screen/login_screen_view.dart';
import 'package:untitled5/features/intro/choose_your_account/choose_your_account_view.dart';
import 'package:untitled5/public/style.dart';

class WelcomeScreen extends StatelessWidget {
   WelcomeScreen({Key? key, this.valueCheckBox}) : super(key: key);
 final bool? valueCheckBox ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: colorWhite,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: ListView(
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 24, left: 155, top: 50),
                child: Align(alignment: Alignment.topRight, child: LogoImage()),
              ),
              const SizedBox(
                height: 25,
              ),
              Image.asset(
                'assets/images/logo2.png',
                height: 320,
              ),
              CustomText(
                text: 'Welcome to ConsultaBoss!',
                fontWeight: FontWeight.bold,
                color: colorSecondary,
                fontSize: 20,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 8,
              ),
              CustomText(
                  text:
                      'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem',
                  color: colorPrimary,
                  fontSize: 16,
                  textAlign: TextAlign.center),
              const SizedBox(
                height: 15,
              ),
              CustomButton(
                  text: 'Join Now',
                  bgColor: colorPrimary,
                  raduis: 10,
                  heightButton: 50,
                  widthButton: 340,
                  fontColor: colorWhite,
                  fontSize: 14,
                  onPress: () => MagicRouter.navigateTo(ChooseAccount())),
              const SizedBox(
                height: 10,
              ),
              CustomButton(
                text: 'Login',
                bgColor: colorWhite,
                raduis: 10,
                heightButton: 50,
                widthButton: 340,
                fontColor: colorPrimary,
                fontSize: 14,
                borderColor: colorPrimary,
                onPress: () => MagicRouter.navigateTo(LoginScreen()),
              ),
            ],
          ),
        ));
  }
}
