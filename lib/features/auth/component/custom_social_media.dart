import 'package:flutter/material.dart';
import 'package:untitled5/common_component/custom_button.dart';
import 'package:untitled5/public/style.dart';

class CustomSocialMedia extends StatelessWidget {
  const CustomSocialMedia({Key? key, required this.image, required this.text})
      : super(key: key);
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomButton(
          borderColor: colorPrimary,
          bgColor: Colors.white,
          raduis: 8,
          isIcon: true,
          icon: Row(
            children: [
              Image.asset(
                'assets/images/$image',
              ),
              const SizedBox(
                width: 10,
              ),
              Image.asset(
                'assets/images/$text',
              ),
            ],
          )),
    );
  }
}
