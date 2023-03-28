import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled5/common_component/custom_text.dart';
import 'package:untitled5/public/style.dart';

class ContainerReviews extends StatelessWidget {
  const ContainerReviews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: Image.asset('assets/images/ProfilePic.png'),
        title: CustomText(
          text: 'Mohamed Karim',
          fontSize: 14,
        ),
       subtitle: Row(
         children: [
           SvgPicture.asset('assets/images/rating.svg'),
           SizedBox(width: 10,),
           CustomText(
             text: '(4/5)',
             fontSize: 13,
           ),
         ],
       ) ,
        trailing: CustomText(
          text: 'Total number of sessions is 15',
          fontSize: 14,
          color: colorPrimary,
        ),
      ),
    );
  }
}
