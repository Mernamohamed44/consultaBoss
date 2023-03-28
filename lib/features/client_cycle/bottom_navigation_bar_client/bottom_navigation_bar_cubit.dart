import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled5/features/bottom_navigation_page/bottom_navigation_state.dart';
import 'package:untitled5/features/client_cycle/booking_screen/booking_screen_views.dart';
import 'package:untitled5/features/client_cycle/favoriets_doctors/favoriets_doctor_screen.dart';
import 'package:untitled5/features/client_cycle/home_client_screen/home_screen_views.dart';
import 'package:untitled5/features/client_cycle/subscriptions_screen/subscriptions_screen_views.dart';

class BottomNavigationClientCubit extends Cubit<BottomNavigationState> {
  BottomNavigationClientCubit() : super(InitialState());

  static BottomNavigationClientCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;
  List<Widget> screens=
  [
    HomeClientScreen(),
    FavoritesDoctorScreen(),
    BookingScreenViews(),
    SubscriptionsScreen()
  ];
  List<BottomNavigationBarItem> bottomNavigationItems = [
    const BottomNavigationBarItem(
      icon:  Icon(Icons.home_outlined),
      activeIcon: Icon(Icons.home_filled),
      label: 'Home',
    ),
     BottomNavigationBarItem(
        icon: SvgPicture.asset('assets/images/heart-circle.svg') ,
        activeIcon: SvgPicture.asset('assets/images/heart-circle(1).svg'),
        label: 'Favorites doctor'),
    const BottomNavigationBarItem(
        icon:  Icon(Icons.library_books),
        activeIcon:  Icon(Icons.library_books_rounded),
        label: 'Booking'),
    const BottomNavigationBarItem(
        icon: Icon(Icons.subscriptions_outlined),
        activeIcon:Icon(Icons.subscriptions) ,
        label: 'Subscriptions'),
  ];
  void changeNavigationBottom(index) {
    currentIndex = index;
    emit(ChangeBottomNavigationState());
  }
}