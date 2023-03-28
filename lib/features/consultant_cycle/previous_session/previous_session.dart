import 'package:flutter/material.dart';
import 'package:untitled5/common_component/custom_app_bar_consult.dart';
import 'package:untitled5/common_component/custom_drawer_consultant/custom_drawer.dart';
import 'package:untitled5/common_component/custom_text_field.dart';
import 'package:untitled5/features/consultant_cycle/previous_session/components/container_previous_session.dart';
import 'package:untitled5/public/style.dart';

class PreviousSession extends StatelessWidget {
  PreviousSession({Key? key}) : super(key: key);
   var keyScaffold=GlobalKey<ScaffoldState>();
   final String pageName='PreviousSession';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      key: keyScaffold,
       appBar: CustomAppBarConsult(scaffoldKey: keyScaffold,),
      drawer: CustomDrawerConsult(
        page: pageName
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 20
        ),
        child: Column(
          children: [
            CustomTextField(
              fillColor: Colors.white,
              suffixIcon: Icon(Icons.search,color: colorpurple,),
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context,index)=>PreviousSessionContainer(),
                  separatorBuilder: (context,index)=>SizedBox(height: 15,),
                  itemCount: 10),
            )
          ],
        ),
      ),
    );
  }
}
