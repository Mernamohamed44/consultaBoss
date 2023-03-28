import 'package:flutter/material.dart';
import 'package:untitled5/features/client_cycle/subscriptions_screen/components/container_subscriptions.dart';

class SubscriptionsScreen extends StatelessWidget {
  const SubscriptionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      itemBuilder: (context, index) => SubscriptionsContainer(),
      separatorBuilder: (context, index) => const SizedBox(
        height: 10,
      ),
      itemCount: 10,
    );
  }
}
