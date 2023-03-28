import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled5/common_component/custom_tab_bar.dart';
import 'package:untitled5/common_component/custom_text_field.dart';
import 'package:untitled5/features/client_cycle/booking_screen/components/done_screen.dart';
import 'package:untitled5/features/client_cycle/booking_screen/components/scheduled_screen.dart';
import 'package:untitled5/public/style.dart';

class BookingScreenViews extends StatelessWidget {
  const BookingScreenViews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15
        ),
        child: Column(
          children: const [
            Expanded(
              child: CustomTabBar(
                  tabs: [
                Tab(text: 'Scheduled',),
                Tab(text :'Done')
              ],
                  isScrollable:false,
                  pages: [
                    ScheduledScreen(),
                    DoneScreen()
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
