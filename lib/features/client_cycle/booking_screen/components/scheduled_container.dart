import 'package:flutter/material.dart';
import 'package:untitled5/common_component/custom_button.dart';
import 'package:untitled5/core/router/router.dart';
import 'package:untitled5/features/client_cycle/book_new_appointment/book_new_appointment.dart';
import 'package:untitled5/public/style.dart';

class ScheduledContainer extends StatelessWidget {
  const ScheduledContainer({Key? key}) : super(key: key);

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
                          text: 'Session Date: ',
                          style: TextStyle(color: colorBlack)),
                      TextSpan(
                          text: '23-11-2022',
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
                              text: 'Session Time: ',
                              style: TextStyle(color: colorBlack)),
                          TextSpan(
                              text: '2:00 PM',
                              style: TextStyle(color: colorPrimary))
                        ]))
                      ],
                    ),
                    const SizedBox(
                      width: 30,
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Row(
              children: [
                Flexible(
                  child: CustomButton(
                    text: 'Start Session Now',
                    raduis: 10,
                    bgColor: colorSecondary,
                    borderColor: colorSecondary,
                    fontSize: 14,
                    heightButton: MediaQuery.of(context).size.height * 0.04,

                  ),
                    flex: 4,
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  flex: 2,
                  child: CustomButton(
                    borderColor: colorSecondary,
                    text: 'Details',
                    fontColor: colorSecondary,
                    bgColor: Colors.white10,
                    raduis: 10,
                    fontSize: 14,
                    heightButton: MediaQuery.of(context).size.height * 0.04,
                      widthButton:  MediaQuery.of(context).size.width*0.04,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Row(
                  children: [
                    Image.asset('assets/images/Time-Square.png',height:20,width: 20,),
                    InkWell(
                      onTap: ()=>MagicRouter.navigateTo(BookAppointment()),
                      child: Text(
                        'ChangeTime',
                        style: TextStyle(
                            color: colorPrimary,
                            decoration: TextDecoration.underline,
                            fontSize: 14,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
