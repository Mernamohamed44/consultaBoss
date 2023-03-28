import 'package:flutter/material.dart';
import 'package:untitled5/common_component/custom_text.dart';
import 'package:untitled5/public/style.dart';

class CustomRowDrawer extends StatelessWidget {
   CustomRowDrawer({ Key? key, required this.text, required this.image,this.isLogOut=false, required this.onTap }) : super(key: key);
  final String image;
  final String text;
  final bool isLogOut ;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
         Image.asset(image),
         SizedBox(width: 10,),
         CustomText(
          verticalMargin: 10,
           text: text,
           color: isLogOut ? Colors.red.shade600
               : colorPrimary,
           fontSize: 14,
           fontWeight: FontWeight.bold,
         )
        ],
      ),
    );
  }
}
