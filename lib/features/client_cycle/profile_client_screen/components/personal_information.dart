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
          hint: 'Name',
          upperText: 'Name',
          fillColor: Colors.white,
        ),
        CustomTextField(
          upperText: 'Birth Date',
          hint: 'Birth Date',
          fillColor: Colors.white,
          suffixIcon: Icon(
            Icons.date_range_outlined,
            color: colorPrimary,
          ),
        ),
        CustomTextField(
          hint: 'Country',
          upperText: 'Country',
          fillColor: Colors.white,
          suffixIcon: Icon(
            Icons.arrow_drop_down,
            color: colorPrimary,
          ),
        ),
        CustomTextField(
          hint: 'Gender',
          upperText: 'Gender',
          fillColor: Colors.white,
          suffixIcon: Icon(
            Icons.arrow_drop_down,
            color: colorPrimary,
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