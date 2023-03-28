import 'package:flutter/material.dart';
import 'package:untitled5/common_component/custom_app_bar_consult.dart';
import 'package:untitled5/common_component/custom_drawer_client/custom_drawer_client.dart';
import 'package:untitled5/common_component/custom_drawer_consultant/custom_drawer.dart';
import 'package:untitled5/common_component/custom_text.dart';
import 'package:untitled5/public/style.dart';
class Languages extends StatelessWidget {
   Languages({Key? key, required this.type}) : super(key: key);
  var keyScaffold=GlobalKey<ScaffoldState>();
   final String pageName='Languages';
   final String type;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: keyScaffold,
      appBar: CustomAppBarConsult(scaffoldKey: keyScaffold,),
      drawer:  type=='client'?CustomDrawerClient(page: pageName,):CustomDrawerConsult(page: pageName),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            const CustomText(
              text: 'Choose App Language',
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 15
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: colorLightYellow,
                border: Border.all(
                  color: colorSecondary
                )
              ),
              child: Row(
                children: [
                  const Spacer(),
                  const CustomText(
                    text: 'اللغه العربيه ',
                    fontWeight: FontWeight.w700,
                  ),
                  const SizedBox(width: 7,),
                  Image.asset('assets/images/egypt-S.png')

                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 15
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  border: Border.all(
                      color: Colors.white
                  )
              ),
              child: Row(
                children: [
                  Image.asset('assets/images/american-S.png'),
                  const SizedBox(width: 7,),
                  const CustomText(
                    text: 'English ',
                    fontWeight: FontWeight.w700,
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
