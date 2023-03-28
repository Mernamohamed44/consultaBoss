import 'package:flutter/material.dart';
import 'package:untitled5/features/client_cycle/bottom_navigation_bar_client/bottom_navigation_bar_views.dart';
import 'package:untitled5/features/consultant_cycle/booking_screen/component/custom_bottom_sheet.dart';
import 'package:untitled5/public/style.dart';

import '../../../../common_component/custom_button.dart';

class SubscriptionsContainer extends StatelessWidget {
  const SubscriptionsContainer({Key? key}) : super(key: key);

  //Todo: move it
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
        builder: (ctx) => CustomBottomSheet(messageType: 'Message Doctor',screenNavigate:BottomNavigationBarViews(),)
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
            padding: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
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
                    const SizedBox(
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
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.circle,
                      size: 10,
                      color: colorPrimary,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: 'Package Name: ',
                              style: TextStyle(color: colorBlack)),
                          TextSpan(
                              text: '4 sessions Packages',
                              style: TextStyle(color: colorPrimary))
                        ]))
                  ],
                ),
                const SizedBox(
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
                        const SizedBox(
                          width: 5,
                        ),
                        RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: 'Purchase Date: ',
                                  style: TextStyle(color: colorBlack)),
                              TextSpan(
                                  text: '19-12-2022',
                                  style: TextStyle(color: colorPrimary))
                            ]))
                      ],
                    ),
                   Spacer(),
                    Row(
                      children: [
                        Icon(
                          Icons.circle,
                          size: 10,
                          color: colorPrimary,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: 'Price: ',
                                  style: TextStyle(color: colorBlack)),
                              TextSpan(
                                  text: '300:00', style: TextStyle(color: colorPrimary))
                            ]))
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.circle,
                              size: 10,
                              color: colorPrimary,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: 'Package Expiration: ',
                                      style: TextStyle(color: colorBlack)),
                                  TextSpan(
                                      text: '19-11-2022', style: TextStyle(color: colorPrimary))
                                ]))
                          ],
                        ),
                      ],
                    ),
                    Spacer(),

                    Row(
                      children: [
                        Icon(
                          Icons.circle,
                          size: 10,
                          color: colorPrimary,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: 'Status: ',
                                  style: TextStyle(color: colorBlack)),
                              TextSpan(
                                  text: 'New', style: TextStyle(color: colorPrimary))
                            ]))
                      ],
                    ),

                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
          vertical: 10,horizontal: 20
          ),
            child: Row(
              children: [
                Expanded(
                  child: CustomButton(
                    text: 'Visit Doctor Profile',
                    bgColor: colorSecondary,
                    raduis: 10,
                    borderColor: colorSecondary,
                    heightButton: MediaQuery.of(context).size.height * 0.04,
                    fontSize: 14,
                  ),
                ),
               SizedBox(width: 10,),
                Expanded(
                  child: CustomButton(
                    text: 'Details',
                    borderColor: colorSecondary,
                    raduis: 10,
                    heightButton: MediaQuery.of(context).size.height * 0.04,
                    bgColor: Colors.white10,
                    fontColor: colorSecondary,
                    fontSize: 14,
                    onPress: ()=>show(context),
                  ),
                ),
                
              ],
            ),
          )

        ],
      ),
    );
  }
}
