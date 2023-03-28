import 'package:flutter/material.dart';
import 'package:untitled5/features/client_cycle/discount_coupons/discount_coupons_screen/discount_coupons_screen_views.dart';
import 'package:untitled5/features/client_cycle/walet_screen/walet_screen_views.dart';
import 'package:untitled5/features/consultant_cycle/my_clients/my_clients_views.dart';
import 'package:untitled5/features/consultant_cycle/previous_session/previous_session.dart';
import 'package:untitled5/features/consultant_cycle/recived-earnings/recived_earnings.dart';
import 'package:untitled5/features/consultant_cycle/session_prices/session_prices_views.dart';
import 'package:untitled5/features/contact_us/contact_us_views.dart';
import 'package:untitled5/features/languages/languages_views.dart';
import 'package:untitled5/features/questions/question-views.dart';
import 'package:untitled5/features/terms_condition/terms_conditions.dart';

List<String> drawerPages = [
  'SessionPrices',
  'MyClients',
  'ReceivedEarnings',
  'PreviousSession',
];
List<String> drawerPages2 = [
  'TermsCondition',
  'Languages',
  'ContactUs',
  'Questions'
];
List<String> imagesDrawer1 = [
  'assets/images/coin.png',
  'assets/images/coin.png',
  'assets/images/coin.png',
  'assets/images/note-2.png'
];

List<String> imagesDrawer2 = [
  'assets/images/shield-tick.png',
  'assets/images/global.png',
  'assets/images/message.png',
  'assets/images/warning-2.png'
];
List<String> imagesDrawerClient = [
  'assets/images/percentage-square.svg',
  'assets/images/wallet-2.svg',
];
List<Widget> screens1 = [
  SessionPrices(),
  MyClientsViews(),
  ReceivedEarnings(),
  PreviousSession(),
];
List<Widget> screens2 = [
  TermsCondition(type: 'consult',),
  Languages(type: 'consult',),
  ContactUs(type: 'consult',),
  Questions(type: 'consult',),
];
List<String> drawerPagesClient = [
  'Discount Coupons',
  'ConsultaBoss Wallet',
];
List<Widget> screensClient1 = [
  DiscountCoupons(),
  WalletScreen(),
];
List<Widget> screensClient2 = [
  TermsCondition(type: 'client'),
  Languages(type: 'client'),
  ContactUs(type: 'client'),
  Questions(type: 'client'),
];
