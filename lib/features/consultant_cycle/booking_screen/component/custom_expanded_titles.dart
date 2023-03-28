import 'package:flutter/material.dart';
import 'package:untitled5/common_component/custom_text.dart';
import 'package:untitled5/features/bottom_navigation_page/bottom_navigation_page_views.dart';
import 'package:untitled5/features/consultant_cycle/booking_screen/component/custom_bottom_sheet.dart';
import 'package:untitled5/features/consultant_cycle/booking_screen/component/custom_column_comming_sessions.dart';
import 'package:untitled5/public/style.dart';

class CustomExpandedTitles extends StatelessWidget {
  const CustomExpandedTitles({Key? key, required this.txtDate, required this.sessionNumber}) : super(key: key);
  final String txtDate;
  final String sessionNumber;
  @override
  Widget build(BuildContext context) {
    void show(BuildContext ctx) {
      showModalBottomSheet(
          elevation: 10,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40)
            )
          ),
          backgroundColor: colorWhite,
          context: ctx,
          builder: (ctx) => CustomBottomSheet(messageType: 'Message Client',screenNavigate: BottomNavigationPage(),)
      );
    }
    return   ExpansionTile(
        title: Row(
          children: [
            CustomText(
              text: txtDate,
              color: colorPrimary,
              fontSize: 14,
            ),
            CustomText(
              text: ' ($sessionNumber)',
              color: colorSecondary,
              fontSize: 14,
            ),
          ],
        ),
        children: [
          ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            shrinkWrap: true,
            itemCount: 3,
            itemBuilder: (context,index)=>
               CustomComingSessionSessions(clientName: 'Mohamed Nour',sessionsDetails:()=>show(context),
                   timeSession:'02:00 PM' ), separatorBuilder: (BuildContext context, int index)=>const SizedBox(height: 15,),)
        ]
    );
  }
}
