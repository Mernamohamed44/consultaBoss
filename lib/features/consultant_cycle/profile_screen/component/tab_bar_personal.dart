import 'package:flutter/material.dart';
import 'package:untitled5/common_component/custom_button.dart';
import 'package:untitled5/common_component/custom_text_field.dart';
import 'package:untitled5/core/router/router.dart';
import 'package:untitled5/public/style.dart';

class PersonalInformation extends StatefulWidget {
 PersonalInformation({Key? key}) : super(key: key);

  @override
  State<PersonalInformation> createState() => _PersonalInformationState();
}

class _PersonalInformationState extends State<PersonalInformation> {

  @override
  Widget build(BuildContext context) {
    return  ListView(
      padding: EdgeInsets.symmetric(horizontal: 20),
      children: [
        const CustomTextField(
          upperText: 'Main Speciality',
          hint: 'Main Speciality',
          fillColor: Colors.white,
        ),
        const CustomTextField(
          upperText: 'Specialties',
          hint: 'Specialties',
          fillColor: Colors.white,
        ),const CustomTextField(
          upperText: 'Bio',
          hint: 'More information about you...',
          fillColor: Colors.white,
          maxLines: 2,
        ),
        CustomTextField(
          hint: 'Education',
          upperText: 'Education',
          fillColor: Colors.white,
          suffixIcon: Icon(
            Icons.arrow_drop_down_circle,
            color: colorSecondary.withOpacity(.5),
          ),
        ),
        CustomTextField(
          hint: 'Education',
          upperText: 'Experience',
          fillColor: Colors.white,
          suffixIcon: Icon(
            Icons.arrow_drop_down_circle,
            color: colorSecondary.withOpacity(.5),
          ),
        ),
        CustomButton(
            text: 'Update Information',
            bgColor: colorPrimary,
            raduis: 10,
            heightButton: 50,
            widthButton: 340,
            fontColor: colorWhite,
            fontSize: 14,
            onPress: () => MagicRouter.navigateTo(Container())),

      ],
    );
  }
}
