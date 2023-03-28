import 'package:flutter/material.dart';
import 'package:untitled5/public/style.dart';

class YellowContainer extends StatelessWidget {
  const YellowContainer({Key? key, required this.widget}) : super(key: key);
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 5
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colorLightYellow
      ),
      child: widget
    );
  }
}
