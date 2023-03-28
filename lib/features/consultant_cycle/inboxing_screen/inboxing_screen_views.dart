import 'package:flutter/material.dart';
import 'package:untitled5/core/router/router.dart';
import 'package:untitled5/features/consultant_cycle/inboxing_screen/components/custom_List_title.dart';
import 'package:untitled5/features/consultant_cycle/notifications/notifications%20_screen_view.dart';
import 'package:untitled5/public/style.dart';

class InboxingScreen extends StatelessWidget {
  const InboxingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWhite,
      appBar:  AppBar(
          centerTitle: true,
          title: Image.asset('assets/images/Logo - Home Screen.png'),
          backgroundColor: Colors.white,
          actions: [
            IconButton(onPressed: ()=>MagicRouter.navigateTo(Notifications()), icon:Image.asset('assets/images/notifications.png')),
            IconButton(onPressed: ()=>MagicRouter.navigateTo(InboxingScreen()), icon:Image.asset('assets/images/emails.png')),
          ],
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios,size: 20,color: colorPrimary,),
            onPressed: ()=>MagicRouter.pop(),
          )
      ),
      body: ListView.separated(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20
        ),
          itemBuilder: (context,index)=>CustomListTitle(), separatorBuilder:(context,index)=>SizedBox(height:10,), itemCount: 10),
    );
  }
}
