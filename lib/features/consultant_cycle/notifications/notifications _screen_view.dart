import 'package:flutter/material.dart';
import 'package:untitled5/common_component/custom_app_bar_consult.dart';
import 'package:untitled5/core/router/router.dart';
import 'package:untitled5/features/consultant_cycle/notifications/components/custom_container.dart';
import 'package:untitled5/public/style.dart';

class  Notifications extends StatelessWidget {
 Notifications({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset('assets/images/Logo - Home Screen.png'),
        backgroundColor: Colors.white,
        actions: [
          IconButton(onPressed: ()=>MagicRouter.navigateTo(Notifications()), icon:Image.asset('assets/images/notifications.png')),
          IconButton(onPressed: ()=>{}, icon:Image.asset('assets/images/emails.png')),
        ],
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,size: 20,color: colorPrimary,),
          onPressed: ()=>MagicRouter.pop(),
        )
      ),
      body: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          itemBuilder: (context,index)=>CustomContainer(),
          separatorBuilder: (context,index)=>SizedBox(height: 15,),
          itemCount: 8),

    );
  }
}
