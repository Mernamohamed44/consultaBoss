import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled5/common_component/custom_app_bar_consult.dart';
import 'package:untitled5/common_component/custom_drawer_client/custom_drawer_client.dart';
import 'package:untitled5/common_component/custom_text.dart';
import 'package:untitled5/public/style.dart';

class WalletScreen extends StatelessWidget {
   WalletScreen({Key? key}) : super(key: key);
  var scaffoldKey = GlobalKey<ScaffoldState>();
  String pageName='wallet';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.grey.shade200,
      appBar: CustomAppBarConsult(scaffoldKey: scaffoldKey,),
      drawer: CustomDrawerClient(page: 'wallet',),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width*.8,
            padding: EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 20
            ),
            child: Column(
              children: [
                CustomText(
                  text: 'your current balance',
                ),
                SizedBox(
                  height: 20,
                ),
                CustomText(
                  text: '400 EGP',
                  color: colorPrimary,
                ),
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white
            ),
          ),
                SizedBox(height: 15,),
                SvgPicture.asset('assets/images/wallet.svg'),
               SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20
                ),
                child: CustomText(
                  text: 'When you cancel your subscription, the Price will be transferred to your wallet',
                   color: colorPrimary,
                  alignment: Alignment.center,
                  textAlign: TextAlign.center,
                    fontSize: 14,
                ),
              )
        ],
      ),

    );
  }
}
