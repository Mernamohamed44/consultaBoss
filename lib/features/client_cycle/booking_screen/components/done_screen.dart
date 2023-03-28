import 'package:flutter/material.dart';
import 'package:untitled5/features/client_cycle/booking_screen/components/done_container.dart';

class DoneScreen extends StatelessWidget {
  const DoneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(itemBuilder: (context,index)=>DoneContainer(), separatorBuilder: (context,index)=>SizedBox(height: 10,), itemCount:10);
  }
}