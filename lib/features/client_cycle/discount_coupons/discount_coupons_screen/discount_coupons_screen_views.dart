import 'package:flutter/material.dart';
import 'package:untitled5/common_component/custom_app_bar_consult.dart';
import 'package:untitled5/common_component/custom_drawer_client/custom_drawer_client.dart';
import 'package:untitled5/features/client_cycle/discount_coupons/components/discount_container.dart';

class DiscountCoupons extends StatelessWidget {
   DiscountCoupons({Key? key}) : super(key: key);
  var scaffoldKey = GlobalKey<ScaffoldState>();
   String pageName='Discount Coupons';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: CustomAppBarConsult(scaffoldKey: scaffoldKey,),
      drawer: CustomDrawerClient(page: pageName,),
      body: ListView.separated(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15
        ),
          itemBuilder: (context,index)=>DiscountContainer(), separatorBuilder: (context ,index)=>SizedBox(height: 15,), itemCount: 10)
    );
  }
}
