import 'package:flutter/material.dart';
import 'package:untitled5/common_component/custom_button.dart';
import 'package:untitled5/common_component/custom_text.dart';
import 'package:untitled5/common_component/custom_text_button.dart';
import 'package:untitled5/common_component/custom_text_field.dart';
import 'package:untitled5/core/router/router.dart';
import 'package:untitled5/features/auth/login_screen/login_screen_view.dart';
import 'package:untitled5/features/auth/otp_verification/otp_Verification.dart';
import 'package:untitled5/public/style.dart';

class CreateAccountDoc extends StatefulWidget {
  const CreateAccountDoc({Key? key}) : super(key: key);

  @override
  State<CreateAccountDoc> createState() => _CreateAccountDocState();
}

class _CreateAccountDocState extends State<CreateAccountDoc> {
  bool? value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWhite,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        children: [
          Row(
            children: [
              IconButton(
                color: colorPrimary,
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                ),
                onPressed: () => MagicRouter.pop(),
              ),
              const SizedBox(
                width: 50,
              ),
              CustomText(
                text: 'Create new account',
                color: colorBlack,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomTextField(
            hint: 'Name',
            upperText: 'Name',
            fillColor: Colors.white,
          ),
          const CustomTextField(
            upperText: 'Phone Number',
            hint: 'Phone Number',
            fillColor: Colors.white,
          ),
          const CustomTextField(
            upperText: 'Email',
            hint: 'Email',
            fillColor: Colors.white,
          ),
          const CustomTextField(
            hint: 'Password',
            fillColor: Colors.white,
            upperText: 'Password',
            secure: true,
          ),
          const CustomTextField(
            upperText: 'Confirmation Password',
            hint: 'Confirmation Password',
            fillColor: Colors.white,
            secure: true,
          ),
          CustomTextField(
            upperText: 'Birth Date',
            hint: 'Birth Date',
            fillColor: Colors.white,
            suffixIcon: Icon(
              Icons.date_range_outlined,
              color: colorPrimary,
            ),
          ),
          CustomTextField(
            hint: 'Country',
            upperText: 'Country',
            fillColor: Colors.white,
            suffixIcon: Icon(
              Icons.arrow_drop_down,
              color: colorPrimary,
            ),
          ),
          CustomTextField(
            hint: 'Gender',
            upperText: 'Gender',
            fillColor: Colors.white,
            suffixIcon: Icon(
              Icons.arrow_drop_down,
              color: colorPrimary,
            ),
          ),
          Row(
            children: [
              Checkbox(
                  value: value,
                  onChanged: (bool? v) {
                    setState(() {
                      value = v;
                    });
                  },
                  focusColor: colorPrimary,
                  activeColor: colorPrimary),
              CustomText(
                text:
                    'I have read and accept all \n policies and terms & conditions',
                fontSize: 12,
                color: colorGrey,
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          CustomButton(
              text: 'Create Account',
              bgColor: colorPrimary,
              borderColor: colorPrimary,
              raduis: 10,
              onPress: () => MagicRouter.navigateTo(const OtpVerification())),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomText(
                text: 'Have account ?',
                fontSize: 15,
                fontWeight: FontWeight.bold,
                alignment: Alignment.center,
              ),
              CustomTextButton(
                text: 'login',
                textDecoration: TextDecoration.underline,
                onPressed: () => MagicRouter.navigateTo(const LoginScreen()),
              )
            ],
          ),
        ],
      ),
    );
  }
}
