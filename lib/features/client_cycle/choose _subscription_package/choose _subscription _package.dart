import 'package:flutter/material.dart';
import 'package:untitled5/common_component/custom_button.dart';
import 'package:untitled5/common_component/custom_text.dart';
import 'package:untitled5/core/router/router.dart';
import 'package:untitled5/features/client_cycle/Book%20_appointment%20_Done/book%20_appointment%20_done.dart';
import 'package:untitled5/features/client_cycle/choose%20_subscription_package/components/package_container.dart';
import 'package:untitled5/features/consultant_cycle/inboxing_screen/inboxing_screen_views.dart';
import 'package:untitled5/features/consultant_cycle/notifications/notifications%20_screen_view.dart';
import 'package:untitled5/public/style.dart';

class ChooseSubscriptionPackage extends StatelessWidget {
   const ChooseSubscriptionPackage({Key? key}) : super(key: key);

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
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: 'Choose Package you want to subscribe with',
              color: colorPrimary,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
            ListView.separated(
              padding: EdgeInsets.symmetric(vertical: 15),
              shrinkWrap: true,
                itemBuilder: (context,index)=>PackageCard(index: index+1),
                separatorBuilder:  (context,index)=>SizedBox(height: 10,),
                itemCount: 5),
            Spacer(),
            CustomButton(
              bgColor: colorSecondary,
              text: 'Reserve Appointment',
              fontColor: colorWhite,
              raduis: 10,
              borderColor: colorSecondary,
              onPress: ()=>MagicRouter.navigateTo(BookAppointmentDone()),
            )

          ],
        ),
      ),
    );
  }
}
