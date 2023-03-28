import 'package:flutter/material.dart';
import 'package:untitled5/common_component/custom_tab_bar.dart';
import 'package:untitled5/features/consultant_cycle/profile_screen/component/tab_bar_general.dart';
import 'package:untitled5/features/consultant_cycle/profile_screen/component/tab_bar_personal.dart';

class ProfileScreenViews extends StatelessWidget {
  ProfileScreenViews({Key? key}) : super(key: key);
  var scaffoldKey=GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Column(
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
            Expanded(
              child: CustomTabBar(
                isScrollable: true,
                pages: [const GeneralTabBar(), PersonalInformation()],
                tabs: const [
                  Tab(
                    text: 'General Information',
                  ),
                  Tab(
                    text: 'Personal Information',
                  ),
                ],
              ),
            ),
          ],
        ),
    );
  }
}
