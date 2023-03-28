import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled5/common_component/custom_button.dart';
import 'package:untitled5/common_component/custom_text.dart';
import 'package:untitled5/core/router/router.dart';
import 'package:untitled5/features/client_cycle/book_new_appointment/book_new_appointment.dart';
import 'package:untitled5/features/client_cycle/doctor_profile_sceen/doctor_profile_screen.dart';
import 'package:untitled5/public/style.dart';

class HomeContainer extends StatelessWidget {
  const HomeContainer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromRGBO(243, 242, 243, 0.5),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Row(
              children: [
                InkWell(
                  child: CircleAvatar(
                      radius: 35,
                      child: Image.asset('assets/images/ProfilePic.png')),
                 onTap: ()=>MagicRouter.navigateTo(DoctorProfile()),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const CustomText(
                          text: 'Dr.Mohamed Eslam',
                          fontWeight: FontWeight.bold,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: colorLightYellow,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(children: [
                            Icon(Icons.star,size: 18,color: colorSecondary,),
                            CustomText(
                              text: '4.8',
                              fontSize: 14,
                            )
                          ],),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Row(
                          children: [
                            SvgPicture.asset('assets/images/LikeBtn.svg')
                          ],
                        ),
                      ],
                    ),
                    CustomText(
                      text: 'Psychiatry',
                      color: colorGrey,
                      fontSize: 14,
                    ),
                    Row(
                      children: [
                        const CustomText(
                          text: 'Session starts from : ',
                          fontSize: 14,
                        ),
                        CustomText(
                          text: '50',
                          fontSize: 12,
                          color: colorPrimary,
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Flexible(
                  flex: 4,
                  child: CustomButton(
                    text: 'Book Appointment',
                    bgColor: colorSecondary,
                    fontColor: colorWhite,
                    raduis: 10,
                    borderColor: colorSecondary,
                    heightButton: 40,
                    isIcon: true,
                    onPress: ()=>MagicRouter.navigateTo(BookAppointment()),
                    icon: Icon(Icons.book_online,color: colorWhite,size: 15,),

                  ),
                ),
                const SizedBox(width: 35),
                Flexible(
                  flex: 1,
                  child: CustomButton(
                    bgColor: Colors.white10,
                    borderColor: Colors.white10,
                    isIcon: true,
                    icon: Image.asset('assets/images/Chat_Ic.png'),
                    text: 'Chat',
                    fontColor: colorPrimary,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
