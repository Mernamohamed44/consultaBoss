import 'package:flutter/material.dart';
import 'package:untitled5/common_component/custom_text.dart';

class CustomRowStatistics extends StatelessWidget {
  const CustomRowStatistics({super.key,  this.image1, this.txt1,  this.sessionNumber1, this.image2, this.txt2, this.sessionNumber2, this.image3, this.txt3, this.sessionNumber3, });
  final String? image1;
  final String? txt1;
  final String? sessionNumber1;
  final String? image2;
  final String? txt2;
  final String? sessionNumber2;
  final String? image3;
  final String? txt3;
  final String? sessionNumber3;

  @override
  Widget build(BuildContext context) {
    return Row(
      children:  [
        Expanded(
          flex: 1,
          child: Container(
            padding:const EdgeInsets.symmetric(vertical: 10) ,
            alignment: Alignment.center,
            height: 140,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white
            ),
            child: Column(
              children: [
                Image.asset(image1!),
                CustomText(
                  text: txt1!,
                  horizontalMargin: 7,
                  fontSize: 12,
                ),
                CustomText(horizontalMargin: 7,
                  text: sessionNumber1!,
                  color: Colors.blue,
                  fontSize: 12,
                )
              ],
            ),
          )
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          flex: 1,
          child: Container(
            padding:const EdgeInsets.symmetric(vertical: 10) ,
            alignment: Alignment.center,
            height: 140,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white
            ),
            child: Column(
              children: [
                Image.asset(image2!),
                CustomText(
                  text: txt2!,
                  horizontalMargin: 7,
                  fontSize: 12,
                ),
                CustomText(horizontalMargin: 7,
                  text: sessionNumber2!,
                  color: Colors.blue,
                  fontSize: 12,
                )
              ],
            ),
          )
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          flex: 1,
          child: Container(
            padding:const EdgeInsets.symmetric(vertical: 10) ,
            alignment: Alignment.center,
            height: 140,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white
            ),
            child: Column(
              children: [
                Image.asset(image3!),
                CustomText(
                  text: txt3!,
                  horizontalMargin: 7,
                  fontSize: 12,
                ),
                CustomText(horizontalMargin: 7,
                  text: sessionNumber3!,
                  color: Colors.blue,
                  fontSize: 12,
                )
              ],
            ),
          )
        ),
      ],
    );
  }
}
