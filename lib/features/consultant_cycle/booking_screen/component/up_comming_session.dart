import 'package:flutter/material.dart';
import 'package:untitled5/features/consultant_cycle/booking_screen/component/custom_expanded_titles.dart';

class UpComingSessions extends StatelessWidget {
  const UpComingSessions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      itemCount: 3,
      shrinkWrap: true,
      itemBuilder: (context, index) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: const CustomExpandedTitles(
          sessionNumber: '3',
          txtDate: '12-2-2022',
        ),
      ),
      separatorBuilder: (BuildContext context, int index) => const SizedBox(
        height: 5,
      ),
    );
  }
}
