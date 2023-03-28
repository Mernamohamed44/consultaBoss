import 'package:flutter/material.dart';
import 'package:untitled5/common_component/custom_app_bar_consult.dart';
import 'package:untitled5/common_component/custom_button.dart';
import 'package:untitled5/common_component/custom_text.dart';
import 'package:untitled5/features/bottom_navigation_page/bottom_navigation_page_views.dart';
import 'package:untitled5/features/consultant_cycle/booking_screen/component/custom_bottom_sheet.dart';
import 'package:untitled5/features/consultant_cycle/home_screen/components/custom_container.dart';
import 'package:untitled5/features/consultant_cycle/home_screen/components/custom_row.dart';
import 'package:untitled5/public/style.dart';

class HomeScreenViews extends StatelessWidget {
   HomeScreenViews({Key? key}) : super(key: key);
  var scaffoldKey=GlobalKey<ScaffoldState>();
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
         builder: (ctx) => CustomBottomSheet(messageType: 'Message Client',screenNavigate: BottomNavigationPage())
     );
   }
  @override
  Widget build(BuildContext context) {
    return ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          CustomText(
            text: 'Welcome to ConsultaBoss',
            color: colorPrimary,
            fontSize: 16,
            fontWeight: FontWeight.w800,
          ),
          CustomText(
            text: 'We are glad to have you with us today',
            color: colorGrey,
            fontSize: 16,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.all(15),
            height: MediaQuery.of(context).size.height * 0.13,
            decoration: BoxDecoration(
                color: colorPrimary,
                borderRadius: BorderRadius.circular(20),
               ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  flex: 1,
                  child: CircleAvatar(
                    child: Image.asset('assets/images/StartSessionIcon.png'),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Flexible(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: 'Your Next Session start at 5:00 pm',
                        fontSize: 12,
                        color: colorWhite,
                      ),
                      CustomText(
                        text: 'Egypt Time',
                        fontSize: 12,
                        color: colorWhite,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
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
                          const SizedBox(
                            width: 20,
                          ),
                          CustomButton(
                            text: 'Details',
                            onPress: ()=>show(context),
                            heightButton: 23,
                            raduis: 5,
                            fontSize: 14,
                            isBold: false,
                            widthButton: 110,
                            borderColor: colorWhite,
                            bgColor: Colors.white10,
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          CustomText(
            text: 'Choose how to appear to the clients',
            fontSize: 14,
            color: colorBlack,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
               Expanded(
                  child: CustomContainer(
                    fontsize: 18,
                widget: Image.asset('assets/images/Available_Ic.png') ,
                txt: 'Available',
                color: Colors.white,
                txtColor: Colors.greenAccent,
              )),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                  child: CustomContainer(
                      widget: Image.asset('assets/images/Unavailable_Ic.png'),
                      txt: 'unAvailable',
                      color: Colors.black12,
                      txtColor: colorGrey, fontsize: 18,))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            height: 80,
            child: Row(
              children: [
                const CustomText(
                  text:
                      'Start a virtual call to try a voice \n And The picture and call quilty',
                  fontSize: 13,
                ),
                const SizedBox(
                  width: 40,
                ),
                Image.asset('assets/images/_x31_4_Video_Chat.png')
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          CustomText(
            text: 'Statistics',
            fontSize: 14,
            color: colorBlack,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomRowStatistics(
            image1: 'assets/images/Group 41185.png',
            txt1: 'Booked \n sessions',
            sessionNumber1: '12 session',
            image2: 'assets/images/Group 41185.png',
            txt2: 'Scheduled \n sessions',
            sessionNumber2: '11 session',
            image3: 'assets/images/sessions.png',
            txt3: 'Unbooked \n sessions ',
            sessionNumber3: '5 session',
          ),
          const SizedBox(height: 10,),
          const CustomRowStatistics(
            image1: 'assets/images/clientnumber.png',
            txt1: 'Total number \n of  sessions ',
            sessionNumber1: '12 session',
            image2: 'assets/images/totalnumber.png',
            txt2: 'Total number \n of subscription',
            sessionNumber2: '12 session',
            image3: 'assets/images/subnumber.png',
            txt3: 'Total number \n of clients',
            sessionNumber3: '12 session',
          ),
          const SizedBox(
            height: 10,
          ),
          CustomText(
            text: 'Track your balance' ,
            fontSize: 14,
            color: colorBlack,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: CustomContainer(
                  widget:  CustomText(text:'Available Balance', color:colorWhite,fontSize: 16),
                  txt: '500 EGP',
                  txtColor: colorWhite, fontsize: 14, color: colorPrimary,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                flex: 1,
                child: CustomContainer(
                  widget:CustomText(text:'Suspended Balance', color:colorWhite,fontSize: 16) ,
                  color: colorpurple,
                  txt: '100 EGP',
                  txtColor: colorWhite, fontsize: 14,

                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: CustomContainer(
                  widget:  CustomText(text:'Last month profits', color:colorWhite,fontSize: 16), color:colorSecondary ,
                  txt: '5000 EGP',
                  txtColor: colorWhite, fontsize: 14,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                flex: 1,
                child: CustomContainer(
                  widget: CustomText(text:'  Total profits since \n joining ConsultaBoss', color:colorWhite,fontSize: 16), color: colorSecondary,
                  txt: '5000 EGP',
                  txtColor: colorWhite, fontsize: 14,

                ),
              ),
            ],
          )

        ],
    );
  }
}
