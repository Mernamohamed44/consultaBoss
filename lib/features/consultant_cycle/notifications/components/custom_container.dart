import 'package:flutter/material.dart';
import 'package:untitled5/common_component/custom_button.dart';
import 'package:untitled5/common_component/custom_text.dart';
import 'package:untitled5/public/style.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5,vertical:5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomText(
            text: '19-11-2022 \n    1:30 PM',
            color: colorSecondary,
            fontSize: 14,
          ),
          Row(
          crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/Time-Square.png'),
              const SizedBox(width: 5,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomText(
                    text: 'You have an appointment in 3 minutes',
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                  Row(
                    children: [
                      const CustomText(
                        text: 'be ready to start the session with ',
                        fontSize: 14,

                      ),CustomText(
                        text: 'Mahmoud Ahmed',
                        fontSize: 14,
                        color: colorPrimary,
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          CustomButton(
            text: 'Enter Session Now',
            bgColor: colorPrimary,
            raduis: 8,
            widthButton: 180,
          )
        ],
      ),
    );
  }
}
