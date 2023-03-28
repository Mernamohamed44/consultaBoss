import 'package:flutter/material.dart';
import 'package:untitled5/common_component/custom_text.dart';
import 'package:untitled5/core/router/router.dart';
import 'package:untitled5/features/consultant_cycle/edit_appointments_screen/edit_screen_views.dart';
import 'package:untitled5/public/style.dart';

class ScheduleScreenViews extends StatelessWidget {
  ScheduleScreenViews({Key? key}) : super(key: key);
    @override
  Widget build(BuildContext context) {
    return ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          CustomText(
            text: 'Added appointments',
            color: colorPrimary,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          ListView.builder(
            itemCount: 4,
            shrinkWrap: true,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8), color: Colors.white),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const CustomText(
                          text: 'SunDay',
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: () =>MagicRouter.navigateTo(EditAppointments()),
                          child: Image.asset('assets/images/edit.png'),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/images/Time-Circle.png'),
                        const Text('From 1:00 pm to 3:00 pm'),
                        Image.asset('assets/images/Online.png')
                      ],
                    ),
                    const SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/images/Time-Circle.png'),
                        const Text('From 3:00 pm to 5:00 pm'),
                        Image.asset('assets/images/InOffice.png')
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
    );
  }
}
