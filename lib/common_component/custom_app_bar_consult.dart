import 'package:flutter/material.dart';
import 'package:untitled5/core/router/router.dart';
import 'package:untitled5/features/consultant_cycle/inboxing_screen/inboxing_screen_views.dart';
import 'package:untitled5/features/consultant_cycle/notifications/notifications%20_screen_view.dart';

class CustomAppBarConsult extends StatelessWidget with PreferredSizeWidget {
  CustomAppBarConsult({Key? key, required this.scaffoldKey}) : super(key: key);
  final scaffoldKey;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Image.asset('assets/images/Logo - Home Screen.png'),
      backgroundColor: Colors.white,
      actions: [
        IconButton(
            onPressed: () => MagicRouter.navigateTo(Notifications()),
            icon: Image.asset('assets/images/notifications.png')),
        IconButton(
            onPressed: () => MagicRouter.navigateTo(InboxingScreen()),
            icon: Image.asset('assets/images/emails.png')),
      ],
      leading: IconButton(
        onPressed: () {
          if (scaffoldKey.currentState!.isDrawerOpen) {
            scaffoldKey.currentState!.closeDrawer();
          } else {
            scaffoldKey.currentState!.openDrawer();
          }
        },
        icon: Image.asset(
          'assets/images/menu.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(
      MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.width,
      MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.height *
          0.09);
}
