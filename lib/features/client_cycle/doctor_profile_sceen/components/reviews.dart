import 'package:flutter/material.dart';
import 'package:untitled5/features/client_cycle/doctor_profile_sceen/components/container_reviews.dart';

class Reviews extends StatelessWidget {
  const Reviews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context,index)=>ContainerReviews(),
        separatorBuilder:(context,index)=>SizedBox(
          height: 10,
        ), itemCount: 10);
  }
}
