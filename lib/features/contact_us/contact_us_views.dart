import 'package:flutter/material.dart';
import 'package:untitled5/common_component/custom_app_bar_consult.dart';
import 'package:untitled5/common_component/custom_button.dart';
import 'package:untitled5/common_component/custom_drawer_client/custom_drawer_client.dart';
import 'package:untitled5/common_component/custom_drawer_consultant/custom_drawer.dart';
import 'package:untitled5/common_component/custom_text.dart';
import 'package:untitled5/common_component/custom_text_field.dart';
import 'package:untitled5/public/style.dart';

class ContactUs extends StatelessWidget {
  ContactUs({Key? key, required this.type,}) : super(key: key);
  var keyScaffold=GlobalKey<ScaffoldState>();
  final String pageName = 'ContactUs';
  final String type;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      key: keyScaffold,
      appBar: CustomAppBarConsult(scaffoldKey: keyScaffold,),
      drawer:  type=='client'?CustomDrawerClient(page: pageName,):CustomDrawerConsult(page: pageName),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 45,
          right: 20,
          left: 20
        ),
        child: Column(
          children:  [
            const CustomTextField(
              hint: 'Name',
              upperText: 'Name',
              fillColor: Colors.white,
            ),
            const CustomTextField(
              upperText: 'Email Address',
              hint: 'Email Address',
              fillColor: Colors.white,
            ),
            const CustomTextField(
              hint: 'Your Message',
              upperText: 'Your Message',
              fillColor: Colors.white,maxLines: 4,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: CustomButton(
                text: 'Send Now',
                raduis: 8,
                fontColor: colorWhite,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.phone,color: colorPrimary,),
                  const SizedBox(
                    width: 8,
                  ),
                  CustomText(
                    color: colorPrimary,
                    text:'+201090675005',
                    fontSize: 14,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.phone_android,color: colorPrimary,),
                  const SizedBox(
                    width: 8,
                  ),
                  CustomText(
                    color: colorPrimary,
                    text:'+201090675005',
                    fontSize: 14,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Image.asset('assets/images/Social_Ics.png')

          ],
        ),
      ),
    );
  }
}
