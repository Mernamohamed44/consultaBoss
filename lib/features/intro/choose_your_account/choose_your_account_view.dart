import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled5/common_component/custom_button.dart';
import 'package:untitled5/common_component/custom_text.dart';
import 'package:untitled5/common_component/logo_image.dart';
import 'package:untitled5/core/router/router.dart';
import 'package:untitled5/features/auth/create_account_doctor/create_account_views.dart';
import 'package:untitled5/features/intro/choose_your_account/choose_account_states.dart';
import 'package:untitled5/features/intro/choose_your_account/choose_your_account_cubit.dart';
import 'package:untitled5/public/style.dart';

class ChooseAccount extends StatelessWidget {
  const ChooseAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChooseAccountCubit(),
      child: BlocBuilder<ChooseAccountCubit, ChooseAccountState>(
        builder: (context, state) {
          var cubit = ChooseAccountCubit.get(context);
          return Scaffold(
            body: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Row(
                    children: [
                      IconButton(
                        color: colorPrimary,
                        icon: const Icon(Icons.arrow_back_ios),
                        onPressed: () => MagicRouter.pop(),
                      ),
                      const SizedBox(
                        width: 150,
                      ),
                      const Align(
                          alignment: Alignment.topRight,
                          child: SizedBox(
                              width: 150, height: 150, child: LogoImage())),
                    ],
                  ),
                ),
                CustomText(
                  color: colorPrimary,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  text: 'Choose your account type',
                ),
                const SizedBox(
                  height: 35,
                ),
               Padding(
                 padding: const EdgeInsets.symmetric(
                   horizontal: 30
                 ),
                 child: Column(
                   children: [
                     InkWell(
                       onTap: () {
                         cubit.selectUserType('consultant');
                       },
                       child: Container(
                         width: 320,
                         height: 200,
                         padding: EdgeInsets.all(10),
                         decoration: BoxDecoration(
                             color: Colors.white,
                             border: Border.all(
                               color: cubit.selectUser == 'consultant'
                                   ? colorPrimary
                                   : colorWhite,
                             ),
                             borderRadius: BorderRadius.circular(20)),
                         child: Column(
                           children: [
                             SvgPicture.asset('assets/images/Doctor.svg'),
                             CustomText(
                               text: 'Consultant',
                               color: colorPrimary,
                               fontSize: 20,
                               fontWeight: FontWeight.w600,
                             )
                           ],
                         ),
                       ),
                     ),
                     const SizedBox(
                       height: 25,
                     ),
                     InkWell(
                         onTap: () {
                           cubit.selectUserType('client');
                         },
                         child: Container(
                             width: 320,
                             height: 200,
                             padding: EdgeInsets.only(
                               bottom: 10,top: 15
                             ),
                             decoration: BoxDecoration(
                                 color: Colors.white,
                                 border: Border.all(
                                   color: cubit.selectUser == 'client'
                                       ? colorPrimary
                                       : colorWhite,
                                 ),
                                 borderRadius: BorderRadius.circular(20)),
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Image.asset('assets/images/Client.png'),
                                 CustomText(
                                   text: 'Client',
                                   color: colorPrimary,
                                   fontSize: 20,
                                   fontWeight: FontWeight.w600,
                                 )
                               ],
                             ))),
                     const SizedBox(
                       height: 45,
                     ),
                     CustomButton(
                       text: 'Next',
                       bgColor: cubit.selectUser==''?colorGrey:colorPrimary,
                       raduis: 10,
                       heightButton: 50,
                       fontColor: colorWhite,
                       fontSize: 14,
                       borderColor:cubit.selectUser==''?colorGrey:colorPrimary,
                       onPress: () {
                         if (cubit.selectUser == 'consultant') {
                           MagicRouter.navigateTo(const CreateAccountDoc());
                         } else {
                           MagicRouter.navigateTo(const CreateAccountDoc());
                         }
                       },
                     )
                   ],
                 ),
               )
              ],
            ),
          );
        },
      ),
    );
  }
}
