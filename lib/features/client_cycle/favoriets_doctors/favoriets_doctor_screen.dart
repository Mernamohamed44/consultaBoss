import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled5/common_component/custom_text_field.dart';
import 'package:untitled5/features/client_cycle/home_client_screen/components/home_container.dart';
import 'package:untitled5/public/style.dart';

class FavoritesDoctorScreen extends StatelessWidget {
  const FavoritesDoctorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 20
      ),
      child: Column(
        children: [
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
              const SizedBox(width: 15,),
              Container(
                padding: const EdgeInsets.all(13),
                decoration: BoxDecoration(
                    color:  Colors.white,
                    borderRadius: BorderRadius.circular(10)
                ),
                child:SvgPicture.asset('assets/images/Filter_Ic.svg'),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
                itemBuilder: (context,index)=>HomeContainer(),
                separatorBuilder: (context,index)=>SizedBox(height: 10,), 
                itemCount: 2),
          )
        ],
      ),
    );
  }
}
