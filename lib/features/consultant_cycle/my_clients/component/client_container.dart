import 'package:flutter/material.dart';
import 'package:untitled5/common_component/custom_button.dart';
import 'package:untitled5/common_component/custom_text.dart';
import 'package:untitled5/public/style.dart';

class ClientContainer extends StatelessWidget {
  const ClientContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 8
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white
      ),
      child: Column(
        children: [
            CustomText(
              text: 'Mahmoud Ahmed',
              fontWeight: FontWeight.w600,
              color: colorPrimary,
            ),
          ListTile(
            title: Row(
              children: [
                Image.asset('assets/images/vuesax-bulk-coin.png'),
                Row(
                  children: [
                    const CustomText(
                      text: 'Number of sessions: ',
                      fontSize: 14,
                    ),CustomText(
                      text: '14 ',
                      fontSize: 14,
                      color: colorPrimary,
                    ),
                  ],
                )
              ],
            ),
            subtitle: Row(
              children: [
                Image.asset('assets/images/vuesax-bulk-coin.png'),
                Row(
                  children: [
                    const CustomText(
                      text: 'Last session: ',
                      fontSize: 14,
                    ),CustomText(
                      text: 'Online | 10/11/2022 ',
                      fontSize: 14,
                      color: colorPrimary,
                    ),

                  ],
                ),
              ],
            ),
            leading: Image.asset('assets/images/ProfilePic.png'),
          ),
          Row(
            children: [
              const Spacer(),
              CustomButton(
                isIcon: true,
                icon: Image.asset('assets/images/Chat_Ic.png'),
                borderColor: colorPrimary,
                bgColor: Colors.white,
                text: 'Chat',
                raduis: 10,
                fontColor: colorPrimary,
                heightButton: 50,
                widthButton: 100,

              ),
            ],
          )
        ],
      ),
    );
  }
}
