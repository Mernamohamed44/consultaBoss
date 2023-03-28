import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled5/common_component/custom_app_bar_consult.dart';
import 'package:untitled5/common_component/custom_drawer_consultant/custom_drawer.dart';
import 'package:untitled5/features/bottom_navigation_page/bottom_navigation_state.dart';
import 'package:untitled5/features/bottom_navigation_page/bttom_navigation_bar_cubit.dart';

import 'package:untitled5/public/style.dart';

class BottomNavigationPage extends StatelessWidget {
   BottomNavigationPage({Key? key}) : super(key: key);
  var scaffoldKey = GlobalKey<ScaffoldState>();
  String pageName='BottomNavigationPage';
  @override
  Widget build(BuildContext context) {
    return  BlocProvider(create: (context)=>BottomNavigationCubit(),
    child: BlocBuilder<BottomNavigationCubit,BottomNavigationState>(
      builder: (context,state){
        var cubit=BottomNavigationCubit.get(context);
        return Scaffold(
          backgroundColor: colorWhite,
            key: scaffoldKey,
            drawer:  CustomDrawerConsult(page: pageName,),
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
          body: cubit.getCurrenView,

        );
      },
    ),);
  }
}
