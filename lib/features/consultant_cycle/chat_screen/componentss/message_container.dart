import 'package:flutter/material.dart';
import 'package:untitled5/common_component/custom_text.dart';
import 'package:untitled5/public/style.dart';

class MessageContainer extends StatelessWidget {
   MessageContainer({Key? key, required this.message, this.myMessage=false}) : super(key: key);
   final String message;
   final bool myMessage;

  @override
  Widget build(BuildContext context) {
    return   Container(
      padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 8
      ),
      decoration: BoxDecoration(
          color: myMessage?colorPrimary:colorLightYellow,
          borderRadius:  BorderRadius.only(
              bottomRight: myMessage? Radius.circular(5) :Radius.circular(20),
              topRight:myMessage? Radius.circular(5) :Radius.circular(20),
              bottomLeft: myMessage ?Radius.circular(20):Radius.circular(5),
              topLeft: myMessage ?Radius.circular(20):Radius.circular(5),
          )
      ),
      child: CustomText(
        fontSize: 12,
        text: message,
        color: myMessage?colorWhite:colorPrimary,
      ),
    );
  }
}
