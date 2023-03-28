import 'package:flutter/material.dart';
import 'package:untitled5/common_component/custom_button.dart';
import 'package:untitled5/common_component/custom_text.dart';
import 'package:untitled5/public/style.dart';

class DiscountContainer extends StatelessWidget {
  const DiscountContainer({Key? key}) : super(key: key);

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
                              text: 'Coupons code: ',
                              style: TextStyle(color: colorBlack)),
                          TextSpan(
                              text: 'First50',
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
                              text: 'Coupons value: ',
                              style: TextStyle(color: colorBlack)),
                          TextSpan(
                              text: '50 EGP',
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
                                  text: 'Coupons Expiration: ',
                                  style: TextStyle(color: colorBlack)),
                              TextSpan(
                                  text: 'Until run out',
                                  style: TextStyle(color: colorPrimary))
                            ]))
                      ],
                    ),
                    const SizedBox(
                      width: 30,
                    ),

                  ],
                ),
              ],
            ),
          ),
         Padding(
           padding: const EdgeInsets.symmetric(
             horizontal: 45,
             vertical: 10
           ),
           child: CustomButton(
             text: 'copy coupons',
             borderColor: colorSecondary,
             bgColor: colorSecondary,
             raduis: 18,
           ),
         )
        ],
      ),
    );
  }
}
