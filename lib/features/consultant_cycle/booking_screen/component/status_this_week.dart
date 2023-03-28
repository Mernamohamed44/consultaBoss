import 'package:flutter/material.dart';
import 'package:untitled5/common_component/custom_text.dart';

class StatusThisWeek extends StatelessWidget {
  const StatusThisWeek({Key? key, required this.txt, required this.icon, required this.colorIcon}) : super(key: key);
  final String txt;
  final IconData icon;
  final Color colorIcon;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(
        left: 8,
        right: 8
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: colorIcon
        )
      ),
      child: Row(
        children:[
          Icon(icon,size: 13,color: colorIcon,),
          CustomText(
           text: txt,
            fontSize: 15,
          )
        ],
      ),
    );
  }
}
