import 'package:flutter/material.dart';
import 'package:untitled5/common_component/custom_button.dart';
import 'package:untitled5/common_component/custom_text.dart';
import 'package:untitled5/common_component/custom_text_field.dart';
import 'package:untitled5/common_component/logo_image.dart';
import 'package:untitled5/core/router/router.dart';
import 'package:untitled5/public/style.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWhite,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 45),
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: IconButton(
              color: colorPrimary,
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 24,
              ),
              onPressed: () => MagicRouter.pop(),
            ),
          ),
          const LogoImage(),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:40),
            child: CustomText(
              verticalMargin: 8,
              text:
                  'Please Enter the OTP resend to your Email to reset your password',
              color: colorBlack,
              fontSize: 14,
              fontWeight: FontWeight.bold,
              alignment: Alignment.center,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const CustomTextField(
            upperText: 'Email',
            hint: 'Email',
            fillColor: Colors.white,
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: CustomButton(
              text: 'Send',
              bgColor: colorPrimary,
              raduis: 10,
              fontColor: colorWhite,
              fontSize: 14,
              borderColor: colorPrimary,
            ),
          ),
        ],
      ),
    );
  }
}
