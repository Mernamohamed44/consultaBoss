import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled5/common_component/custom_app_bar_consult.dart';
import 'package:untitled5/common_component/custom_drawer_client/custom_drawer_client.dart';
import 'package:untitled5/common_component/custom_drawer_consultant/custom_drawer.dart';
import 'package:untitled5/features/bottom_navigation_page/bottom_navigation_state.dart';
import 'package:untitled5/features/client_cycle/bottom_navigation_bar_client/bottom_navigation_bar_cubit.dart';
import 'package:untitled5/public/style.dart';

class BottomNavigationBarViews extends StatelessWidget {
   BottomNavigationBarViews({Key? key}) : super(key: key);
  var scaffoldKey = GlobalKey<ScaffoldState>();
   String pageName='BottomNavigationBarClient';
  @override
  Widget build(BuildContext context) {
    return  BlocProvider(create: (context)=>BottomNavigationClientCubit(),
      child: BlocBuilder<BottomNavigationClientCubit, BottomNavigationState>(
        builder: (context,state){
          var cubit=BottomNavigationClientCubit.get(context);
          return Scaffold(
            backgroundColor: colorWhite,
            key: scaffoldKey,
            body: cubit.screens[cubit.currentIndex],
            drawer:  CustomDrawerClient(page: pageName,),
            appBar: CustomAppBarConsult(scaffoldKey: scaffoldKey,),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              elevation: 4,
              selectedItemColor: colorPrimary,
              unselectedItemColor: colorGrey,
              showUnselectedLabels: true,
              items: cubit.bottomNavigationItems,
              currentIndex: cubit.currentIndex,
              onTap: (index) {
                cubit.changeNavigationBottom(index);
              },
            ),
          );
        },
      ),);
  }
}
