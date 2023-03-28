import 'package:flutter/material.dart';
import 'package:untitled5/common_component/custom_button.dart';
import 'package:untitled5/common_component/custom_text.dart';
import 'package:untitled5/common_component/custom_text_field.dart';
import 'package:untitled5/core/router/router.dart';
import 'package:untitled5/features/auth/component/custom_social_media.dart';
import 'package:untitled5/features/auth/forget_password/forget_password.dart';
import 'package:untitled5/public/style.dart';

class GeneralTabBar extends StatelessWidget {
  const GeneralTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      children: [
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
        CustomTextField(
          upperText: 'Birth Date',
          hint: 'Birth Date',
          fillColor: Colors.white,
          suffixIcon: Icon(
            Icons.date_range_outlined,
            color: colorPrimary,
          ),
        ),
        const CustomTextField(
          hint: 'Name',
          upperText: 'Name',
          fillColor: Colors.white,
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
        CustomText(
          text: 'Link Login',
          fontSize: 14,
          color: colorBlack,
          fontWeight: FontWeight.bold,
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: const [
            CustomSocialMedia(image: "Facebook_Ic.png", text: "Facebook.png"),
            SizedBox(
              width: 10,
            ),
            CustomSocialMedia(image: "Google_Ic.png", text: "Google.png"),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        CustomButton(
            text: 'Change Password',
            bgColor: colorWhite,
            raduis: 10,
            heightButton: 50,
            widthButton: 340,
            fontColor: colorPrimary,
            fontSize: 14,
            borderColor: colorPrimary,
            onPress: () =>MagicRouter.navigateTo(ForgetPasswordScreen())),
        const SizedBox(
          height: 10,
        ),
        CustomButton(
            text: 'Update Information',
            bgColor: colorPrimary,
            raduis: 10,
            heightButton: 50,
            widthButton: 340,
            fontColor: colorWhite,
            fontSize: 14,
            onPress: () => MagicRouter.navigateTo(Container())),
      ],
    );
  }
}
