import 'package:flutter/material.dart';
import 'package:untitled5/common_component/custom_button.dart';
import 'package:untitled5/common_component/custom_text.dart';
import 'package:untitled5/public/style.dart';

class CustomComingSessionSessions extends StatelessWidget {
  const CustomComingSessionSessions({Key? key, required this.clientName, required this.timeSession, required this.sessionsDetails}) : super(key: key);
  final String clientName;
  final String timeSession;
  final VoidCallback sessionsDetails;
  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.only(
        bottom: 15
      ),
      child: Column(
        children: [
          Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height:15,
                  width: 15,
                  decoration: BoxDecoration(
                      color: colorPrimary,
                      borderRadius: BorderRadius.circular(100)
                  ),
                ),
                SizedBox(width: 8,),
                Row(
                  children: [
                    const CustomText(
                      text: 'Client name :',
                      fontSize: 16,
                    ),
                    CustomText(
                      text: clientName,
                      fontSize: 14,
                      color: colorPrimary,
                    ),
                  ],
                )
              ],
            ),
            Spacer(),
            CustomButton(
              text: 'Start Session',
              bgColor: colorSecondary,
              raduis: 5,
              heightButton: 23,
              widthButton: 110,
              fontSize: 14,
              isBold: false,
              borderColor: colorSecondary,
            ),
          ],
        ),
          SizedBox(
            height: 5,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height:15,
                width: 15,
                decoration: BoxDecoration(
                    color: colorPrimary,
                    borderRadius: BorderRadius.circular(100)
                ),
              ),
              SizedBox(width: 8,),
              Row(
                children: [
                  CustomText(
                    text: 'Session time :',
                    verticalMargin: 0,
                    fontSize: 16,
                  ),
                  CustomText(
                    text: timeSession,
                    fontSize: 14,
                    color: colorPrimary,
                    verticalMargin: 0,
                  ),
                ],
              ),
              Spacer(),
              CustomButton(
                text: 'Details',
                heightButton: 23,
                raduis: 5,
                fontSize: 14,
                fontColor: colorPrimary,
                isBold: false,
                widthButton: 110,
                borderColor: colorPrimary,
                bgColor: Colors.white10,
                onPress: sessionsDetails  ,
              ),
            ],
          )
            ],
          ),
    );
  }
}
