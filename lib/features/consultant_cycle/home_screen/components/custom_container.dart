import 'package:flutter/material.dart';
import 'package:untitled5/common_component/custom_text.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({Key? key, required this.widget, required this.color, required this.txt, required this.txtColor, required this.fontsize}) : super(key: key);
  final Widget widget;
  final Color color;
  final String txt;
  final Color txtColor;
  final double fontsize;
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 80,
     width: 160,
     alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
        children: [
          widget,
          CustomText(
            text: txt,
            color: txtColor,
            fontSize: fontsize ,
          ),
        ],
      ),
    );
  }
}
