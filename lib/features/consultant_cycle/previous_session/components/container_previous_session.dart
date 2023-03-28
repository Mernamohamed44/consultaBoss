import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:untitled5/common_component/custom_button.dart';
import 'package:untitled5/common_component/custom_text.dart';
import 'package:untitled5/core/router/router.dart';
import 'package:untitled5/public/style.dart';

class PreviousSessionContainer extends StatelessWidget {
  const PreviousSessionContainer({Key? key}) : super(key: key);
  void showDialogs(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            title: Row(children: [
              InkWell(
                child:
                    Image.asset('assets/images/vuesax-bulk-close-circle.png'),
                onTap: () => MagicRouter.pop(),
              ),
              const SizedBox(
                width: 50,
              ),
              CustomText(
                text: 'Client Review',
                color: colorPrimary,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ]),
            actions: [
              Align(
                alignment: Alignment.center,
                child: RatingBarIndicator(
                  rating: 4,
                  itemBuilder: (context, index) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  itemCount: 5,
                  itemSize: 20.0,
                  direction: Axis.horizontal,
                ),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13), color: Colors.white10),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(13),
                    topLeft: Radius.circular(13)),
                color: Colors.white),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.circle,
                      size: 14,
                      color: colorPrimary,
                    ),
                    const CustomText(
                      text: 'Client Name',
                      fontSize: 14,
                    ),
                    CustomText(
                      text: 'Merna Mohamed',
                      fontSize: 14,
                      color: colorpurple,
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.circle,
                      size: 14,
                      color: colorPrimary,
                    ),
                    const CustomText(
                      text: 'Date',
                      fontSize: 14,
                    ),
                    CustomText(
                      text: '19-10-2022',
                      fontSize: 14,
                      color: colorpurple,
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.circle,
                      size: 14,
                      color: colorPrimary,
                    ),
                    const CustomText(
                      text: 'Time',
                      fontSize: 14,
                    ),
                    CustomText(
                      text: '2:00 PM',
                      fontSize: 14,
                      color: colorpurple,
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
            child: CustomButton(
              text: 'Views Client Reviews',
              raduis: 10,
              onPress: () {
                showDialogs(context);
              },
            ),
          )
        ],
      ),
    );
  }
}
