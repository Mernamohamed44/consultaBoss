import 'package:flutter/material.dart';
import 'package:untitled5/common_component/custom_text.dart';
import 'package:untitled5/public/style.dart';

class DateContainer extends StatelessWidget {
  const DateContainer({Key? key, required this.containerColor, required this.colorText, required this.txt, required this.onPress}) : super(key: key);
  final Color containerColor;
  final Color colorText;
  final String txt;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(
            horizontal:4
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: txt=='1:30 PM' ?containerColor:colorLightYellow
        ),
        child: CustomText(
          text: txt,
          fontSize: 15,
          color:txt=='2:15 PM' ?colorBlack: colorText,
        ),
      ),
    );
  }
}
