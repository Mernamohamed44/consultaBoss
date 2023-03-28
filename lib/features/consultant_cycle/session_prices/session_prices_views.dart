import 'package:flutter/material.dart';
import 'package:untitled5/common_component/custom_app_bar_consult.dart';
import 'package:untitled5/common_component/custom_button.dart';
import 'package:untitled5/common_component/custom_drawer_consultant/custom_drawer.dart';
import 'package:untitled5/common_component/custom_text.dart';
import 'package:untitled5/features/consultant_cycle/session_prices/components/container_status.dart';
import 'package:untitled5/public/style.dart';

class SessionPrices extends StatelessWidget {
  SessionPrices({Key? key}) : super(key: key);
  final String pageName = 'SessionPrices';
  var scaffoldKey = GlobalKey<ScaffoldState>();

  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWhite,
      key: scaffoldKey,
      appBar: CustomAppBarConsult(
        scaffoldKey: scaffoldKey,
      ),
      drawer:  CustomDrawerConsult(
        page: pageName,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
                color: colorPrimary, borderRadius: BorderRadius.circular(15)),
            child: CustomText(
              color: colorWhite,
              fontSize: 14,
              text:
                  'You can set the session price for the clients \n and you can also activate or disable sessions',
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const ContainerStatus(
            txt: 'onLine',
            coloIcon: Colors.green,
          ),
          const SizedBox(
            height: 15,
          ),
          ContainerStatus(coloIcon: colorPrimary, txt: 'onOffice'),
          SizedBox(
            height: 150,
          ),
          CustomButton(
            text: 'Save',
            raduis: 14,
          )
        ],
      ),
    );
  }
}
