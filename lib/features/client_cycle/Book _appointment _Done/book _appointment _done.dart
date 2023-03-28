import 'package:flutter/material.dart';
import 'package:untitled5/common_component/custom_button.dart';
import 'package:untitled5/common_component/custom_text.dart';
import 'package:untitled5/core/router/router.dart';
import 'package:untitled5/features/client_cycle/book_new_appointment/book_new_appointment.dart';
import 'package:untitled5/features/client_cycle/booking_screen/booking_screen_views.dart';
import 'package:untitled5/features/consultant_cycle/inboxing_screen/inboxing_screen_views.dart';
import 'package:untitled5/features/consultant_cycle/notifications/notifications%20_screen_view.dart';
import 'package:untitled5/public/style.dart';

class BookAppointmentDone extends StatelessWidget {
  const BookAppointmentDone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorWhite,
        leading: IconButton(
            onPressed: () {MagicRouter.pop();}, icon: Icon(Icons.clear, color: colorPrimary)),
        actions: [
          IconButton(
              onPressed: () => MagicRouter.navigateTo(Notifications()),
              icon: Image.asset('assets/images/notifications.png')),
          IconButton(
              onPressed: () => MagicRouter.navigateTo(InboxingScreen()),
              icon: Image.asset('assets/images/emails.png')),
        ],
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: 20,left: 20,right: 20),
        child: Row(
          children: [
            Expanded(
              child: CustomButton(
                bgColor: colorSecondary,
                text: 'Book New appointment',
                fontColor: colorWhite,
                raduis: 10,
                borderColor: colorSecondary,
                onPress: () => MagicRouter.navigateTo(BookAppointment()),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: CustomButton(
                bgColor: colorWhite,
                text: 'My Booking',
                fontColor: colorSecondary,
                raduis: 10,
                borderColor: colorSecondary,
                onPress: () => MagicRouter.navigateTo(BookAppointmentDone()),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/congratulation_logo.png'),
            CustomText(
              text: 'Congratolations!',
              color: colorSecondary,
            ),
            CustomText(
              alignment: Alignment.center,
              text:
                  'You have booked the appointment successfully at the time you selected',
              color: colorPrimary,
              textAlign: TextAlign.center,
              fontSize: 16,
            ),
            CustomText(
              fontSize: 14,
              alignment: Alignment.center,
              textAlign: TextAlign.center,
              text:
                  'You can change the appointment time before session starts by 24 hours at least.',
            ),
          ],
        ),
      ),
    );
  }
}
