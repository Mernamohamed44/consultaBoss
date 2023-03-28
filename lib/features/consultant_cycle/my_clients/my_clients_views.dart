import 'package:flutter/material.dart';
import 'package:untitled5/common_component/custom_app_bar_consult.dart';
import 'package:untitled5/common_component/custom_drawer_consultant/custom_drawer.dart';
import 'package:untitled5/features/consultant_cycle/my_clients/component/client_container.dart';

class MyClientsViews extends StatelessWidget {
   MyClientsViews({Key? key}) : super(key: key);
  var keyScaffold=GlobalKey<ScaffoldState>();
   final String pageName='MyClients';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      key: keyScaffold,
      appBar: CustomAppBarConsult(scaffoldKey: keyScaffold,),
      drawer: CustomDrawerConsult(  page: pageName,),
      body: ListView.separated(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20
        ),
          itemBuilder: (context,index)=>ClientContainer(),
          separatorBuilder: (context,index)=>SizedBox(height: 20,),
          itemCount: 7),
    );
  }
}
