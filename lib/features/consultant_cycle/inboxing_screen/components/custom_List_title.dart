import 'package:flutter/material.dart';
import 'package:untitled5/common_component/custom_text.dart';
import 'package:untitled5/core/router/router.dart';
import 'package:untitled5/features/consultant_cycle/chat_screen/chat_screen_views.dart';
import 'package:untitled5/public/style.dart';

class CustomListTitle extends StatelessWidget {
  const CustomListTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>MagicRouter.navigateTo(ChatScreenViews()),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 5,vertical:5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: ListTile(
          leading: Image.asset('assets/images/ProfilePic.png'),
          title: const CustomText(
            text: 'Dr. Mohamed',
            fontWeight: FontWeight.w700,
          ),
          subtitle: const CustomText(
            text: 'Hello ,How are you',
          ),
          trailing: CustomText(
            text: '   Today \n 1:00 PM',
            fontSize: 14,
            color: colorSecondary,
          ),
        ),
      ),
    );
  }
}
