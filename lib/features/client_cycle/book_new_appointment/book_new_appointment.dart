import 'package:flutter/material.dart';
import 'package:untitled5/common_component/custom_tab_bar.dart';
import 'package:untitled5/common_component/custom_text.dart';
import 'package:untitled5/core/router/router.dart';
import 'package:untitled5/features/client_cycle/book_new_appointment/components/calender.dart';
import 'package:untitled5/features/client_cycle/book_new_appointment/components/this_week.dart';
import 'package:untitled5/features/consultant_cycle/inboxing_screen/inboxing_screen_views.dart';
import 'package:untitled5/features/consultant_cycle/notifications/notifications%20_screen_view.dart';
import 'package:untitled5/public/style.dart';

class BookAppointment extends StatelessWidget {
  const BookAppointment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: InkWell(child: Icon(Icons.arrow_back_ios,color: colorPrimary,),onTap:()=> MagicRouter.pop(),),
        title: CustomText(
          text: 'Book new appointment',
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        actions: [
          IconButton(onPressed: ()=>MagicRouter.navigateTo(Notifications()), icon:Image.asset('assets/images/notifications.png')),
          IconButton(onPressed:  ()=>MagicRouter.navigateTo(InboxingScreen()), icon:Image.asset('assets/images/emails.png')),
        ],
      ),
      body: DefaultTabController(
        length: 2,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 15
          ),
          child: Column(
            children: [
              Expanded(child: CustomTabBar(
                tabs: [
                  Tab(text: 'This week',),
                  Tab(text:'Calender')
                ],
                pages: [
                  ThisWeek(),
                  Calender()
                ], isScrollable: false,
              )),

            ],
          ),
        ),
      ),
    );
  }
}
