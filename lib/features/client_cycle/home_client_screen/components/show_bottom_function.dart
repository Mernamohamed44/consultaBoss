import 'package:flutter/material.dart';
import 'package:untitled5/common_component/custom_button.dart';
import 'package:untitled5/common_component/custom_text.dart';
import 'package:untitled5/common_component/custom_text_field.dart';
import 'package:untitled5/public/style.dart';

showBottom(context) {
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return ListView(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          children: [
        CustomText(
          text: 'Filter',
          alignment: Alignment.center,
          color: colorPrimary,
          fontWeight: FontWeight.bold,
        ),
        Divider(
          color: colorPrimary,
        ),
        CustomTextField(
          upperText: 'Consultation Type',
          suffixIcon: Icon(
            Icons.arrow_drop_down,
            color: colorPrimary,
          ),
        ),
        CustomText(
          text: 'Views Consultants',
          fontWeight: FontWeight.w400,
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Expanded(child:
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets
                  .all(13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: colorLightYellow,
              ),
              child: CustomText(text: 'online',),
            )),
            SizedBox(width: 5,),
            Expanded(child:  Container(
              alignment: Alignment.center,
              padding: EdgeInsets
                  .all(13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: colorLightYellow,
              ),
              child: CustomText(text: 'onOffice',),
            )),
            SizedBox(width: 5,),
            Expanded(child:  Container(
              alignment: Alignment.center,
              padding: EdgeInsets
                  .all(13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: colorLightYellow,
              ),
              child: CustomText(text: 'both',),
            )),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        CustomText(
          text: 'Gender',
          fontWeight: FontWeight.w400,
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Expanded(child:  Container(
              alignment: Alignment.center,
              padding: EdgeInsets
                  .all(13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: colorLightYellow,
              ),
              child: CustomText(text:'Male',),
            )),
            SizedBox(width: 5,),
            Expanded(child:  Container(
              alignment: Alignment.center,
              padding: EdgeInsets
                  .all(13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: colorLightYellow,
              ),
              child: CustomText(text:'Female',),
            )),
            SizedBox(width: 5,),
            Expanded(child:  Container(
              alignment: Alignment.center,
              padding: EdgeInsets
                  .all(13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: colorLightYellow,
              ),
              child: CustomText(text:'other',),
            )),
          ],
        ),
        CustomText(
          text: 'Price',
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              Expanded(
                child: CustomTextField(
                radius: 20,
                  lableText: 'From',
                  textColor: colorPrimary,
            ),
              ),
              SizedBox(
               width: 10,
              ),
              Expanded(
                child: CustomTextField(
                  radius: 20,
                  lableText: 'To',
                  textColor: colorPrimary,
                ),
              ),
            ],
          ),
        ),
            SizedBox(
              height: 10,
            ),
            CustomButton(
              text: 'Apply',
              raduis: 10,
              heightButton: MediaQuery.of(context).size.height*.06,
            )
      ]);
    },
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40), topRight: Radius.circular(40))),
  );
}
