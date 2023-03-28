import 'package:flutter/material.dart';
import 'package:untitled5/common_component/custom_button.dart';
import 'package:untitled5/common_component/custom_text.dart';
import 'package:untitled5/core/router/router.dart';
import 'package:untitled5/features/client_cycle/choose%20_subscription_package/choose%20_subscription%20_package.dart';
import 'package:untitled5/features/consultant_cycle/booking_screen/component/date_container.dart';
import 'package:untitled5/features/consultant_cycle/booking_screen/component/status_this_week.dart';
import 'package:untitled5/public/style.dart';

class ThisWeek extends StatefulWidget {
   ThisWeek({Key? key}) : super(key: key);

  @override
  State<ThisWeek> createState() => _ThisWeekState();
}

class _ThisWeekState extends State<ThisWeek> {
  bool  press=true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45),
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey.shade200
            ),
            child: CustomText(
              text: 'your current session balance (9)',
              fontSize: 14,
            ),
          ),
        ),
        const CustomText(
          text: 'Choose a Day',
          fontSize: 15,
          fontWeight: FontWeight.w700,
        ),
        const SizedBox(
          height: 8,
        ),
        Container(
          height: 80,
          child: ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  width: 120,
                  height: 90,
                  padding: const EdgeInsets.symmetric(horizontal: 2.5),
                  decoration: BoxDecoration(
                    border: Border.all(color: colorSecondary),
                    color: colorLightYellow,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CustomText(
                          text: '23 Wednesday',
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                        CustomText(
                          text: '8 appointment ',
                          color: colorPrimary,
                          fontSize: 12,
                        ),
                        CustomText(
                          text: 'available',
                          color: colorPrimary,
                          fontSize: 12,
                        )
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(
                width: 10,
              ),
              itemCount: 6),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: 'Wednesday ',
                    color: colorBlack,
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                  const CustomText(
                    text: '23 November 2022',
                    fontSize: 14,
                  ),
                ],
              ),
              const Divider(
                endIndent: 20,
                indent: 20,
                thickness: 2,
              ),
              const CustomText(
                text: 'Choose appointment time',
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children:  [
                  const StatusThisWeek(
                    txt: 'Online',
                    icon: Icons.circle,
                    colorIcon: Colors.green,
                  ),
                  CustomText(
                    text: '  4 appointments available',
                    fontSize: 14,
                    color: colorGrey,
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 25,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) => DateContainer(
                      onPress:index==0?(){
                        setState(() {
                          press=!press;
                        });
                      }:(){},
                      txt: index==0?'1:30 PM':'2:15 PM',
                      colorText: colorWhite,
                      containerColor: colorSecondary),
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 10,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  StatusThisWeek(
                    txt: 'OnOffice',
                    icon: Icons.circle,
                    colorIcon: colorPrimary,
                  ),
                  CustomText(
                    text: '  2 appointments available',
                    fontSize: 14,
                    color: colorGrey,
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 30,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (context, index) => DateContainer(
                    txt: '1:30 PM',
                    colorText: colorBlack,
                    containerColor: colorLightYellow, onPress: () {  },),
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 10,
                  ),
                ),
              ),
            ],
          ),
        ),
       Spacer(),
        CustomButton(
          bgColor:press?colorGrey: colorSecondary,
          text: 'Reserve Appointment',
          fontColor: colorWhite,
          raduis: 10,
          borderColor:press?colorGrey: colorSecondary,
          onPress: ()=>MagicRouter.navigateTo(ChooseSubscriptionPackage()),
        )
      ],
    );
  }
}
