import 'package:flutter/material.dart';
import 'package:untitled5/common_component/custom_text.dart';
import 'package:untitled5/public/style.dart';

class PackageCard extends StatelessWidget {
  const PackageCard({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: Colors.grey.shade200,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: 'Package $index',
              color: colorPrimary,
            ),
            Divider(
              color: colorPrimary,
              indent: 20,
              endIndent: 20,
            ),
            Row(
              children: [
                Icon(Icons.circle,size: 10,color: colorPrimary,),
                SizedBox(width: 10,),
                RichText(text:TextSpan(
                    children: [
                      TextSpan(
                          text:  'remain appointment: 3',
                          style: TextStyle(
                            color: colorGrey,
                            fontSize: 14,
                          )
                      )
                    ]
                ) )
              ],
            ) ,
            Row(
              children: [
                Icon(Icons.circle,size: 10,color: colorPrimary,),
                SizedBox(width: 10,),
                RichText(text:TextSpan(
                  children: [
                    TextSpan(
                    text:  'Subscriptions End Date: 18/2/2022',
                      style: TextStyle(
                        color: colorGrey,
                        fontSize: 14,
                      )
                    )
                  ]
                ) )
              ],
            )
          ],
        ),
      ),
    );
  }
}
