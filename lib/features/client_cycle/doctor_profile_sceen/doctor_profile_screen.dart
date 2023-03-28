import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled5/common_component/custom_button.dart';
import 'package:untitled5/common_component/custom_tab_bar.dart';
import 'package:untitled5/common_component/custom_text.dart';
import 'package:untitled5/core/router/router.dart';
import 'package:untitled5/features/client_cycle/doctor_profile_sceen/components/about_screen.dart';
import 'package:untitled5/features/client_cycle/doctor_profile_sceen/components/reviews.dart';
import 'package:untitled5/features/client_cycle/doctor_profile_sceen/components/work_scedules.dart';
import 'package:untitled5/features/client_cycle/doctor_profile_sceen/components/yellow_container.dart';
import 'package:untitled5/features/consultant_cycle/inboxing_screen/inboxing_screen_views.dart';
import 'package:untitled5/features/consultant_cycle/notifications/notifications%20_screen_view.dart';
import 'package:untitled5/public/style.dart';

class DoctorProfile extends StatelessWidget {
  const DoctorProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       backgroundColor: colorWhite,
       actions: [
         IconButton(
             onPressed: () => MagicRouter.navigateTo(Notifications()),
             icon: Image.asset('assets/images/notifications.png')),
         IconButton(
             onPressed: () => MagicRouter.navigateTo(const InboxingScreen()),
             icon: Image.asset('assets/images/emails.png')),
       ],
       title: const CustomText(
         text: 'Doctor Profile',
         fontWeight: FontWeight.bold,
       ),
       centerTitle: true,
        leading: IconButton(
          onPressed: ()=>MagicRouter.pop(),
          icon: Icon(Icons.arrow_back_ios,color: colorPrimary,size: 18,),
        ),
     ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20
        ),
        child: Row(
          children: [
            Expanded(
              child: CustomButton(
                text: 'Book Appointment',
                raduis: 10,
                bgColor: colorSecondary,
                borderColor: colorSecondary,
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Expanded(
              child: CustomButton(
                text: 'join With Doctor',
                raduis: 10,
                bgColor: colorSecondary,
                borderColor: colorSecondary,
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: DefaultTabController(
        length: 3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Image.asset('assets/images/ProfileCover.png'),
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    height: 110,
                    width: 110,
                    'assets/images/ProfilePic.png',
                    alignment: Alignment.bottomCenter,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  text: 'Dr. Mohamed Salem',
                  color: colorPrimary,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
                const SizedBox(width: 15,),
                Image.asset('assets/images/Chat_Ic.png'),
                const SizedBox(width: 5,),
                SvgPicture.asset('assets/images/LikeBtn.svg')
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const YellowContainer(
                  widget: CustomText(
                    text: 'Psychiatry',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(width: 10,),
                YellowContainer(
                  widget:Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Icon(Icons.star,size: 18,color: colorSecondary,),
                    const CustomText(
                      text: '4.8',
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                    CustomText(
                      text: '(425 reviews)',
                      fontSize: 14,
                      color: colorGrey,
                      fontWeight: FontWeight.w600,
                    ),

                  ],),
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20
              ),
              child: CustomText(
                text: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos',
                alignment: Alignment.center,
                textAlign: TextAlign.center,
                fontSize: 14,
                color: colorGrey,
              ),
            ),
            const Expanded(
              child: CustomTabBar(
                isScrollable: false,
                pages: [AboutScreen(), WorkSchedules(),Reviews()],
                tabs: [
                  Tab(
                    text: 'About',
                  ),
                  Tab(
                    text: 'Work Schedules',
                  ),Tab(
                    text: 'Reviews',
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
