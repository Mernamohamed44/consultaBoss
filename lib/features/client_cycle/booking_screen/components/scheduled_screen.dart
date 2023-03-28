import 'package:flutter/material.dart';
import 'package:untitled5/features/client_cycle/booking_screen/components/scheduled_container.dart';

class ScheduledScreen extends StatelessWidget {
  const ScheduledScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(itemBuilder: (context,index)=>ScheduledContainer(), separatorBuilder: (context,index)=>SizedBox(height: 20,), itemCount:10),
    );
  }
}
