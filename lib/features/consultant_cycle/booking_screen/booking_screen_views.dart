import 'package:flutter/material.dart';
import 'package:untitled5/common_component/custom_tab_bar.dart';
import 'package:untitled5/features/consultant_cycle/booking_screen/component/calendar.dart';
import 'package:untitled5/features/consultant_cycle/booking_screen/component/this_week.dart';
import 'package:untitled5/features/consultant_cycle/booking_screen/component/up_comming_session.dart';

class BookingScreenViews extends StatelessWidget {
   BookingScreenViews({Key? key}) : super(key: key);
   var scaffoldKey=GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Column(
            children:    const [
                  Expanded(
                    child: CustomTabBar(
                        tabs: [
                          Tab(
                            text: 'Upcoming Sessions',
                          ),
                            Tab(
                            text: 'ThisWeek',
                          ),  Tab(
                            text: 'Calender',
                          ),
                        ],
                      isScrollable: true,
                      pages: [
                       UpComingSessions(),
                     ThisWeek(),
                       Calender(),
                    ],

                    ),
                  )
            ],
          ),
        )
    );
  }
}
