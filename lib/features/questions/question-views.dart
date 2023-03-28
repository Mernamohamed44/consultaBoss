import 'package:flutter/material.dart';
import 'package:untitled5/common_component/custom_app_bar_consult.dart';
import 'package:untitled5/common_component/custom_drawer_client/custom_drawer_client.dart';
import 'package:untitled5/common_component/custom_drawer_consultant/custom_drawer.dart';
import 'package:untitled5/features/questions/components/custom_expanded_tile.dart';
import 'package:untitled5/public/style.dart';


class Questions extends StatelessWidget {
   Questions({Key? key, required this.type}) : super(key: key);
  var keyScaffold=GlobalKey<ScaffoldState>();
   final String pageName = 'Questions';
   final String type;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: keyScaffold,
      backgroundColor: colorWhite,
      appBar: CustomAppBarConsult(scaffoldKey: keyScaffold,),
        drawer:  type=='client'?CustomDrawerClient(page: pageName,):CustomDrawerConsult(page: pageName),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20),
        child: Column(
          children:  [
            CustomExpandedTiles(textTitle: 'QUESTION ONE', textChild: 'question one',),
            SizedBox(
              height: 30,
            ),
            CustomExpandedTiles(textTitle: 'QUESTION TWO', textChild: 'question two',)
          ],
        ),
      ),
    );
  }
}
