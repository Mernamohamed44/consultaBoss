import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled5/features/bottom_navigation_page/bottom_navigation_state.dart';
import 'package:untitled5/features/consultant_cycle/booking_screen/booking_screen_views.dart';
import 'package:untitled5/features/consultant_cycle/home_screen/home_screen_views.dart';
import 'package:untitled5/features/consultant_cycle/profile_screen/profile_screen_views.dart';
import 'package:untitled5/features/consultant_cycle/schedule_screen/schedule_screen_views.dart';

class BottomNavigationCubit extends Cubit<BottomNavigationState> {
  BottomNavigationCubit() : super(InitialState());
  static BottomNavigationCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;
  List<Widget> screens=[
    HomeScreenViews(),
    BookingScreenViews(),
    ScheduleScreenViews(),
    ProfileScreenViews()
  ];
  List<BottomNavigationBarItem> bottomNavigationItems = [
    const BottomNavigationBarItem(
      icon:  Icon(Icons.home_outlined),
      activeIcon: Icon(Icons.home_filled),
      label: 'Home',
    ),
    const BottomNavigationBarItem(
        icon: Icon(Icons.my_library_books_outlined),
        activeIcon: Icon(Icons.my_library_books),
        label: 'Booking'),
    const BottomNavigationBarItem(
        icon:  Icon(Icons.schedule_outlined),
        activeIcon:  Icon(Icons.schedule_send_outlined),
        label: 'Schedule'),
    const BottomNavigationBarItem(
        icon: Icon(Icons.person_outline),
        activeIcon:Icon(Icons.person) ,
        label: 'profile'),
  ];
  void changeNavigationBottom(index) {
    currentIndex = index;
    emit(ChangeBottomNavigationState());
  }

  Widget get getCurrenView => screens[currentIndex];
}
