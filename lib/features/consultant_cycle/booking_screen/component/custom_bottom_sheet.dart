import 'package:flutter/material.dart';
import 'package:untitled5/common_component/custom_button.dart';
import 'package:untitled5/common_component/custom_text.dart';
import 'package:untitled5/core/router/router.dart';
import 'package:untitled5/features/bottom_navigation_page/bottom_navigation_page_views.dart';
import 'package:untitled5/public/style.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({Key? key, required this.messageType, required this.screenNavigate}) : super(key: key);
  final String messageType;
  final Widget screenNavigate;
   void showDialogs(BuildContext context,String txt,String txtButton,String txtButton2,VoidCallback onPress){
      showDialog(
          context: context,
          builder: (context){
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
        ),
        title: CustomText(
          text: 'Cancel Session',
          fontSize: 16,
          color:colorPrimary,
          alignment: Alignment.center,
          fontWeight: FontWeight.w600,
        ),
            actions: [
               Column(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   Image.asset('assets/images/Warning_Ic.png',),
                   CustomText(
                     text: txt,
                     fontSize: 14,
                   ),
                   const SizedBox(height: 30,),
                   Row(
                     children: [
                       Expanded(child: CustomButton(
                           text: txtButton,
                           raduis: 10,
                           fontColor: colorWhite,
                         onPress: onPress),
                       ),
                       const SizedBox(
                         width: 10,
                       ),
                       Expanded(child: CustomButton(
                         text: txtButton2,
                         onPress: (){
                           MagicRouter.pop();
                           showDialogs(context,'session canceled','Back To home',messageType,()=>MagicRouter.navigateTo(screenNavigate));
                         },
                         raduis: 10,
                         bgColor: colorWhite,
                         fontColor: colorPrimary,
                         borderColor: colorPrimary,
                       ))
                     ],
                   )
                 ],
               )

            ],
      );
          });
   }
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 350,
      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
      child: Column(
        children: [
          CustomText(
            text: 'Sessions Details',
            color: colorPrimary,
            fontWeight: FontWeight.w600,
            textAlign: TextAlign.center,
            fontSize: 15,
          ),
          const SizedBox(height: 10,),
          Row(
            children: [
              const CustomText(
                text: 'Session date: ',
                fontSize: 15,
              ),
              CustomText(
                text: '23-3-2023',
                color: colorPrimary,
                fontSize: 15,
              ),
            ],
          ),
          const SizedBox(height:10,),
          Row(
            children: [
              const CustomText(
                text: 'Client Name: ',
                fontSize: 15,
              ),
              CustomText(
                text: 'Mohamed Nour',
                color: colorPrimary,
                fontSize: 15,
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            children: [
              const CustomText(
                text: 'Session Start Time: ',
                fontSize: 15,
              ),
              CustomText(
                text: '2:00',
                color: colorPrimary,
                fontSize: 15,
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            children: [
              const CustomText(
                text: 'Duartion: ',
                fontSize: 15,
              ),
              CustomText(
                text: '30 Minutes',
                color: colorPrimary,
                fontSize: 15,
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            children: [
              const CustomText(
                text: 'Expiration Date: ',
                fontSize: 15,
              ),
              CustomText(
                text: '23-5-2023',
                color: colorPrimary,
                fontSize: 15,
              ),
            ],
          ),
          const SizedBox(height: 30,),
          Row(
            children: [
              Expanded(
                  child: CustomButton(
                text: messageType,
                raduis: 10,
                  fontColor: colorWhite
              )),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                  child: CustomButton(
                text: 'Cancel session',
                onPress: ()=>showDialogs(context,'Are you sure you want to cancel the session?','Go Back','Cancel session',()=>MagicRouter.pop()
                ),
                raduis: 10,
                bgColor: colorWhite,
                fontColor: colorPrimary,
                borderColor: colorPrimary,
              ))
            ],
          )
        ],
      ),
    );
  }
}
