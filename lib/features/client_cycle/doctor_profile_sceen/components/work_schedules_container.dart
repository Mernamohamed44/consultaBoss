import 'package:flutter/material.dart';
import 'package:untitled5/common_component/custom_text.dart';

class WorkSchedulesContainer extends StatelessWidget {
  const WorkSchedulesContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20
      ),
      child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: 'SunDay',
            fontWeight: FontWeight.w600,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Image.asset('assets/images/Time-Circle.png'),
              SizedBox(width: 10,),
              CustomText(
                text: 'From 1:00 PM to 3:30 PM',
                fontSize: 15,
              ),
              Spacer(),
              Image.asset('assets/images/Online.png')
            ],
          ),
          SizedBox(height: 15,),
          Row(
            children: [
              Image.asset('assets/images/Time-Circle.png'),
              SizedBox(width: 10,),
              CustomText(
                text: 'From 1:00 PM to 3:30 PM',
                fontSize: 15,
              ),
              Spacer(),
              Image.asset('assets/images/InOffice.png')
            ],
          )
        ],
      ),
    );
  }
}
