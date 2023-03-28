import 'package:flutter/material.dart';
import 'package:untitled5/common_component/custom_app_bar_consult.dart';
import 'package:untitled5/common_component/custom_button.dart';
import 'package:untitled5/common_component/custom_text.dart';
import 'package:untitled5/common_component/custom_text_field.dart';
import 'package:untitled5/public/style.dart';

class EditAppointments extends StatefulWidget {
  const EditAppointments({Key? key}) : super(key: key);

  @override
  State<EditAppointments> createState() => _EditAppointmentsState();
}

class _EditAppointmentsState extends State<EditAppointments> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  Image onLine = Image.asset('assets/images/onlineimage.png');

  Image inOffice = Image.asset('assets/images/inofficeimage.png');
  bool? valueCheckBox1 = false;
  bool? valueCheckBox2 = false;
  bool? valueCheckBox3 = false;
  bool? valueCheckBox4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: CustomAppBarConsult(
        scaffoldKey: scaffoldKey,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        children: [
          const CustomText(
            text:
                'You can specify the days and times of sessions that you will be available whether online or inoffice',
            fontSize: 15,
          ),
          Row(
            children: [
              Checkbox(
                  value: valueCheckBox1,
                  onChanged: (bool? v) {
                    setState(() {
                      valueCheckBox1 = v;
                    });
                  },
                  splashRadius: 2,
                  checkColor: colorPrimary,
                  side: BorderSide(color: colorPrimary, width: .5),
                  autofocus: true,
                  focusColor: colorPrimary,
                  activeColor: colorWhite),
              CustomText(
                text: 'Saturday',
                fontSize: 17,
                color: colorPrimary,
                fontWeight: FontWeight.w600,
              ),
            ],
          ),
          Row(
            children: [
              Checkbox(
                  value: valueCheckBox2,
                  onChanged: (bool? v) {
                    setState(() {
                      valueCheckBox2 = v;
                    });
                  },
                  splashRadius: 2,
                  checkColor: colorPrimary,
                  side: BorderSide(color: colorPrimary, width: .5),
                  autofocus: true,
                  focusColor: colorPrimary,
                  activeColor: colorWhite),
              const CustomText(
                text: 'From',
                fontSize: 12,
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: CustomTextField(
                  fillColor: Colors.white,
                  suffixIcon:
                      Image.asset('assets/images/vuesax-bulk-clock.png'),
                  keyboardType: TextInputType.datetime,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const CustomText(
                text: 'To',
                fontSize: 12,
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: CustomTextField(
                  fillColor: Colors.white,
                  suffixIcon:
                      Image.asset('assets/images/vuesax-bulk-clock.png'),
                  keyboardType: TextInputType.datetime,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Image.asset('assets/images/vuesax-bulk-trush-square.png')
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Spacer(),
              Expanded(
                child: CustomButton(
                  raduis: 14,
                  text: 'Save',
                  bgColor: colorPrimary,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              CircleAvatar(
                  backgroundColor: colorPrimary,
                  minRadius: 8,
                  child:
                      Icon(Icons.add, color: colorWhite, fill: .5, weight: 10)),
            ],
          )
        ],
      ),
    );
  }
}
