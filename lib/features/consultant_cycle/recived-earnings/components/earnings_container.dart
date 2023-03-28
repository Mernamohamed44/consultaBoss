import 'package:flutter/material.dart';
import 'package:untitled5/common_component/custom_text.dart';
import 'package:untitled5/public/style.dart';

class EarningsContainer extends StatelessWidget {
  const EarningsContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset('assets/images/vuesax-bulk-coin.png'),
              Row(
                children: [
                  CustomText(
                    text: 'Receive date:',
                    fontSize: 14,

                  ),CustomText(
                    text: ' 14/12/2022',
                    fontSize: 14,
                    color: colorPrimary,

                  )
                ],
              )
            ],
          ),
          Row(
            children: [
              Image.asset('assets/images/vuesax-bulk-coin.png'),
              Row(
                children: [
                  const CustomText(
                    fontSize: 15,
                    text: 'Amount received : ',
                  ),CustomText(
                    fontSize: 15,
                    text: '400 EGP',
                    color: colorPrimary,
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
