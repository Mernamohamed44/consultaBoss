import 'package:flutter/material.dart';
import 'package:untitled5/common_component/custom_text.dart';
import 'package:untitled5/features/client_cycle/doctor_profile_sceen/components/yellow_container.dart';
import 'package:untitled5/public/style.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: EdgeInsets.symmetric(
        horizontal: 20
      ),
      children: [
        CustomText(
          text: 'Specialties',
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
        Container(
          height:MediaQuery.of(context).size.height*.05,
          child: ListView.separated(
            shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index)=>YellowContainer(widget:CustomText(
            text: 'Specialty${index+1}',
          )), separatorBuilder: (context,index)=>SizedBox(
            width: 10,
          ), itemCount:5),
        ),
        SizedBox(height: 15,),
        CustomText(
          text: 'Education',
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
        SizedBox(height: 10,),
        Row(
          children: [
            CustomText(
              text: 'Bachelor of Medicine',
              color: colorPrimary,
              fontSize: 12,
            ),
           Spacer(),
            Column(
              children: [
                CustomText(
                  text:'Mansoura',
                  color: colorGrey,
                  fontSize: 12,
                ),
                CustomText(
                  text:'2004',
                  color: colorGrey,
                  fontSize: 12,
                ),

              ],
            ),

          ],
        ),
        CustomText(
          text: 'Experience',
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
        SizedBox(height: 10,),
        Row(
          children: [
            CustomText(
              text: 'Professor of Psychiatry  Medicine',
              color: colorPrimary,
              fontSize: 12,
            ),
            Spacer(),
            Column(
              children: [
                CustomText(
                  text:'Mansoura',
                  color: colorGrey,
                  fontSize: 12,
                ),
                CustomText(
                  text:'2010 - now',
                  color: colorGrey,
                  fontSize: 12,
                ),

              ],
            ),

          ],
        ),
        SizedBox(height: 10,),
        Row(
          children: [
            CustomText(
              text: 'Professor of Psychiatry  Medicine',
              color: colorPrimary,
              fontSize: 12,
            ),
            Spacer(),
            Column(
              children: [
                CustomText(
                  text:'Mansoura',
                  color: colorGrey,
                  fontSize: 12,
                ),
                CustomText(
                  text:'2010 - now',
                  color: colorGrey,
                  fontSize: 12,
                ),

              ],
            ),

          ],
        ),
      ],
    );
  }
}
