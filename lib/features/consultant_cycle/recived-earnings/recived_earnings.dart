import 'package:flutter/material.dart';
import 'package:untitled5/common_component/custom_app_bar_consult.dart';
import 'package:untitled5/common_component/custom_drawer_consultant/custom_drawer.dart';
import 'package:untitled5/common_component/custom_text.dart';
import 'package:untitled5/features/consultant_cycle/recived-earnings/components/earnings_container.dart';
class ReceivedEarnings  extends StatelessWidget {
   ReceivedEarnings ({Key? key}) : super(key: key);
  var scaffoldKey=GlobalKey<ScaffoldState>();
   final String pageName='ReceivedEarnings';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: CustomAppBarConsult(scaffoldKey: scaffoldKey,
      ),
      drawer:  CustomDrawerConsult(
        page: pageName,
      ),
      body: ListView(

        padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10
        ),
        children: [
          const CustomText(
            text: 'You can track your previous revenue history from here',
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
          ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
              itemBuilder: (context,index)=>const EarningsContainer(), separatorBuilder: (context,index)=>const SizedBox(height: 15,),
              itemCount: 10)
        ],
      )
    );
  }
}
