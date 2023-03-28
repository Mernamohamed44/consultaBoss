import 'package:flutter/material.dart';
import 'package:untitled5/common_component/custom_app_bar_consult.dart';
import 'package:untitled5/common_component/custom_drawer_client/custom_drawer_client.dart';
import 'package:untitled5/common_component/custom_tab_bar.dart';
import 'package:untitled5/features/client_cycle/profile_client_screen/components/login_information.dart';
import 'package:untitled5/features/client_cycle/profile_client_screen/components/personal_information.dart';

class ProfileClientScreenViews extends StatelessWidget {
  ProfileClientScreenViews({Key? key}) : super(key: key);
  var scaffoldKey=GlobalKey<ScaffoldState>();
  String pageName='profileScreenClient';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawerClient(page: pageName,),
      key:scaffoldKey ,
      appBar: CustomAppBarConsult(
        scaffoldKey: scaffoldKey,
      ),
      body: DefaultTabController(
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
                pages: [const LoginInfoTabBar(), PersonalInformation()],
                tabs: const [
                  Tab(
                    text: 'Login Information',
                  ),
                  Tab(
                    text: 'Personal Information',
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