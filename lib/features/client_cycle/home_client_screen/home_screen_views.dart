import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled5/common_component/custom_text.dart';
import 'package:untitled5/common_component/custom_text_field.dart';
import 'package:untitled5/features/client_cycle/home_client_screen/components/home_container.dart';
import 'package:untitled5/features/client_cycle/home_client_screen/components/show_bottom_function.dart';
import 'package:untitled5/public/style.dart';

class HomeClientScreen extends StatelessWidget {
  const HomeClientScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: 'Welcome to ConsultaBoss',
            color: colorPrimary,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          CustomText(
            text: 'Choose your Consultant from a group of certified doctors',
            color: colorBlack,
            fontSize: 14,
          ),
          Row(
            children: [
              Expanded(
                child: CustomTextField(
                  hint: 'Search best Doctors',
                  fillColor: Colors.white,
                  suffixIcon: Icon(
                    Icons.search,
                    color: colorpurple,
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              InkWell(
                onTap: () => showBottom(context),
                child: Container(
                  padding: const EdgeInsets.all(13),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: SvgPicture.asset('assets/images/Filter_Ic.svg'),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemBuilder: (context, index) => const HomeContainer(),
              separatorBuilder: (context, index) => const SizedBox(
                height: 10,
              ),
              itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
