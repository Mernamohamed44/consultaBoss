import 'package:flutter/material.dart';
import 'package:untitled5/common_component/custom_text.dart';
import 'package:untitled5/public/style.dart';

class CustomExpandedTiles extends StatelessWidget {
   CustomExpandedTiles({Key? key, required this.textTitle, required this.textChild}) : super(key: key);
  final String textTitle;
  final String textChild;
  @override
  Widget build(BuildContext context) {
    return ListTileTheme(
      tileColor: colorPrimary ,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8)
      ),
      child: ExpansionTile(
        expandedAlignment: Alignment.topLeft,
        trailing: Icon(Icons.arrow_drop_down_circle_outlined,color: colorWhite,),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8)
        ),
        title: CustomText(
          color: colorWhite,
          text: textTitle,
        ),
        children:[
          CustomText(
            color: colorBlack,
            text: textChild,
          ),
        ],
      ),
    );
  }
}
