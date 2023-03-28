import 'package:flutter/material.dart';
import 'package:untitled5/common_component/custom_button.dart';
import 'package:untitled5/features/client_cycle/bottom_navigation_bar_client/bottom_navigation_bar_views.dart';
import 'package:untitled5/features/consultant_cycle/booking_screen/component/custom_bottom_sheet.dart';
import 'package:untitled5/public/style.dart';

class DoneContainer extends StatelessWidget {
  const DoneContainer({Key? key}) : super(key: key);
  show(BuildContext ctx) {
    showModalBottomSheet(
        elevation: 10,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40)
            )
        ),
        backgroundColor: colorWhite,
        context: ctx,
        builder: (ctx) => CustomBottomSheet(messageType: 'Message Doctor',screenNavigate: BottomNavigationBarViews(),)
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.grey.withOpacity(.1)),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15)),
                color: Colors.white),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.circle,
                      size: 10,
                      color: colorPrimary,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: 'Doctor Name: ',
                              style: TextStyle(color: colorBlack)),
                          TextSpan(
                              text: 'Dr. Mohamed Ahmed',
                              style: TextStyle(color: colorPrimary))
                        ]))
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.circle,
                      size: 10,
                      color: colorPrimary,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: 'Session Date: ',
                              style: TextStyle(color: colorBlack)),
                          TextSpan(
                              text: '23-11-2022',
                              style: TextStyle(color: colorPrimary))
                        ]))
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.circle,
                          size: 10,
                          color: colorPrimary,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: 'Session Time: ',
                                  style: TextStyle(color: colorBlack)),
                              TextSpan(
                                  text: '2:00 PM',
                                  style: TextStyle(color: colorPrimary))
                            ]))
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.circle,
                          size: 10,
                          color: colorPrimary,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: 'Session Number: ',
                                  style: TextStyle(color: colorBlack)),
                              TextSpan(
                                  text: '3', style: TextStyle(color: colorPrimary))
                            ]))
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal:60,
              vertical: 10
            ),
            child: CustomButton(
              bgColor: colorSecondary,
              borderColor: colorSecondary,
              text: 'Details',
              raduis: 10,
              onPress: ()=>show(context),
              fontSize: 14,
            ),
          )
        ],
      ),
    );
  }
}
