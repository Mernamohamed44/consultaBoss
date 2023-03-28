import 'package:flutter/material.dart';
import 'package:untitled5/common_component/custom_button.dart';
import 'package:untitled5/common_component/custom_text.dart';
import 'package:untitled5/core/router/router.dart';
import 'package:untitled5/features/bottom_navigation_page/bottom_navigation_page_views.dart';
import 'package:untitled5/features/consultant_cycle/booking_screen/component/custom_bottom_sheet.dart';
import 'package:untitled5/features/consultant_cycle/booking_screen/component/date_container.dart';
import 'package:untitled5/features/consultant_cycle/booking_screen/component/status_this_week.dart';
import 'package:untitled5/public/style.dart';

class ThisWeek extends StatelessWidget {
  const ThisWeek({Key? key}) : super(key: key);
  void showDialogs(
      BuildContext context,String txt,String txtButton,String txtButton2,VoidCallback onPress){
    showDialog(
        context: context,
        builder: (context){
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomText(
                      text: txt,
                      color: colorPrimary,
                      fontSize: 14,
                    ),
                    const SizedBox(height: 30,),
                    Row(
                      children: [
                        Expanded(child: CustomButton(
                            text: txtButton,
                            raduis: 10,
                            fontColor: colorWhite,
                            onPress: onPress),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(child: CustomButton(
                          text: txtButton2,
                          onPress:()=> MagicRouter.pop(),
                          raduis: 10,
                          bgColor: colorWhite,
                          fontColor: colorPrimary,
                          borderColor: colorPrimary,
                        ))
                      ],
                    )
                  ],
                ),
              )

            ],
          );
        });
  }

  void show(BuildContext ctx) {
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
        builder: (ctx) => CustomBottomSheet(messageType: 'Message Client',screenNavigate: BottomNavigationPage(),)
    );
  }
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      children: [
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
          padding: EdgeInsets.symmetric(horizontal: 8),
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
                    onPress:index==2?()=>showDialogs(context,'Are you sure you want to enable \n this session to show to students?','Yes','No',()=>MagicRouter.pop()): ()=>show(context),
                      txt: index==2?'2:15 PM':'1:30 PM',
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
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        )
      ],
    );
  }
}
