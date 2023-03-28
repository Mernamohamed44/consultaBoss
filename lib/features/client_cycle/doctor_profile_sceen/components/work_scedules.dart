import 'package:flutter/material.dart';
import 'package:untitled5/features/client_cycle/doctor_profile_sceen/components/work_schedules_container.dart';

class WorkSchedules extends StatelessWidget {
  const WorkSchedules({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(itemBuilder: (context,index)=>WorkSchedulesContainer(), separatorBuilder: (context,index)=>SizedBox(
      height: 10,

    ), itemCount: 5);
  }
}
