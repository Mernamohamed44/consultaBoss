import 'package:flutter/material.dart';
import 'package:untitled5/common_component/custom_button.dart';
import 'package:untitled5/common_component/custom_text.dart';
import 'package:untitled5/common_component/custom_text_button.dart';
import 'package:untitled5/common_component/logo_image.dart';
import 'package:untitled5/core/router/router.dart';
import 'package:untitled5/features/auth/component/pin_code_feild.dart';
import 'package:untitled5/features/auth/forget_password/forget_password.dart';
import 'package:untitled5/public/style.dart';

class OtpVerification extends StatelessWidget {
  const OtpVerification({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWhite,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: IconButton(
              color: colorPrimary,
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 23,
              ),
              onPressed: () => MagicRouter.pop(),
            ),
          ),
          const LogoImage(),
          const SizedBox(
            height: 50,
          ),
          CustomText(
            text: 'OTP Verification',
            color: colorBlack,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            alignment: Alignment.center,
          ),
          CustomText(
            verticalMargin: 8,
            text: 'Enter the OTP sent to your Email ',
            color: colorBlack,
            fontSize: 14,
            fontWeight: FontWeight.w500,
            alignment: Alignment.center,
          ), CustomText(
            text: 'to reset your password',
            color: colorBlack,
            fontSize: 14,
            fontWeight: FontWeight.w500,
            alignment: Alignment.center,
          ),
          const SizedBox(
            height: 40,
          ),
          const PinCodeField(),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomText(
                text: 'Don\'t receive the OTP?',
                fontSize: 15,
                fontWeight: FontWeight.bold,
                alignment: Alignment.center,
              ),
              CustomTextButton(
                  text: 'Resend OTP',
                  textDecoration: TextDecoration.underline,
                  onPressed: () =>
                      MagicRouter.navigateTo(const ForgetPasswordScreen()))
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top:100),
            child: CustomButton(
              text: 'Confirm',
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
