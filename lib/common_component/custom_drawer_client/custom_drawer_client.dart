import 'package:flutter/material.dart';
import 'package:untitled5/common_component/custom_drawer_client/components/custom_row_drawer_client.dart';
import 'package:untitled5/common_component/custom_drawer_consultant/components/custom_row_drawer.dart';
import 'package:untitled5/common_component/custom_text.dart';
import 'package:untitled5/core/router/router.dart';
import 'package:untitled5/features/client_cycle/profile_client_screen/profile_client_screen.dart';
import 'package:untitled5/features/consultant_cycle/profile_screen/profile_screen_views.dart';
import 'package:untitled5/public/drawer_content.dart';
import 'package:untitled5/public/style.dart';

class CustomDrawerClient extends StatelessWidget {
  const CustomDrawerClient({Key? key, required this.page}) : super(key: key);
  final String page;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Padding(
        padding: EdgeInsets.only(left: 10, top: 20),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () => MagicRouter.pop(),
                    icon: Icon(
                      Icons.clear,
                      color: colorSecondary,
                      size: 23,
                    )),
                Image.asset(
                  'assets/images/Logo.png',
                  width: 130,
                  height: 130,
                )
              ],
            ),
            InkWell(
              onTap: ()=>MagicRouter.navigateTo(ProfileClientScreenViews()),
              child: ListTile(
                leading: Image.asset('assets/images/ProfilePic.png'),
                title: CustomText(
                    text: 'Dr.Mohamed', color: colorPrimary, fontSize: 20),
                subtitle: CustomText(
                  text: 'Go to My profile',
                  fontSize: 14,
                  color: colorGrey,
                ),
              ),
            ),
            ListView.builder(
              padding: EdgeInsets.symmetric(
                  horizontal: 15
              ),
              shrinkWrap: true,
              itemBuilder: (context, index) => CustomRowClient(
                text: drawerPagesClient[index],
                image:imagesDrawerClient[index],
                onTap: () {
                  if(drawerPagesClient[index]==page){
                    MagicRouter.pop();

                  } else {
                    MagicRouter.navigateAndPopUntilFirstPage(screensClient1[index]);


                  }
                },
                isLogOut: false,
              ),
              itemCount: drawerPagesClient.length,
            ),
            const SizedBox(
              height: 20,
            ),
            ListView.builder(
              padding: EdgeInsets.symmetric(
                  horizontal: 15
              ),
              shrinkWrap: true,
              itemBuilder: (context, index) => CustomRowDrawer(
                text: drawerPages2[index],
                image: imagesDrawer2[index],
                onTap: () {
                  if(drawerPages[index]==page){
                    MagicRouter.pop();

                  }
                  else
                  {
                    MagicRouter.navigateAndPopUntilFirstPage(screensClient2[index]);

                  }
                },
                isLogOut: false,
              ),
              itemCount: drawerPages.length,
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 15
              ),
              child:CustomRowDrawer(
                text: 'Sign Out',
                image: 'assets/images/logout.png',
                onTap: () => Container(),
                isLogOut: true,
              ),
            )
          ],
        ),
      ),
    );
  }
}
