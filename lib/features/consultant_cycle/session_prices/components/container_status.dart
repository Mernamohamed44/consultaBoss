import 'package:flutter/material.dart';
import 'package:untitled5/common_component/custom_text.dart';
import 'package:untitled5/common_component/custom_text_field.dart';
import 'package:untitled5/public/style.dart';

class ContainerStatus extends StatefulWidget {
  const ContainerStatus({Key? key, required this.coloIcon, required this.txt, }) : super(key: key);
  final Color coloIcon;
  final String txt;
  @override
  State<ContainerStatus> createState() => _ContainerStatusState();
}

class _ContainerStatusState extends State<ContainerStatus> {
  @override
  Widget build(BuildContext context) {
    bool value =false;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: widget.txt=='onLine'?colorLightYellow:colorGrey,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                Icons.circle,
                size: 12,
                color: widget.coloIcon,
              ),
              SizedBox(
                width: 7,
              ),
              CustomText(
                text: '${widget.txt} session price',
                fontSize: 14,
              ),
              SizedBox(width: 70,),
              CustomText(
                text: '30 Minutes',
                color: colorPrimary,
                fontSize: 12,
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                child: CustomTextField(
                  fillColor: Colors.white,
                ),
              ),
              Switch(value: value, onChanged:(value){
                setState(() {
                  value=!value;
                });
              })
            ],
          )
        ],
      ),
    );
  }
}
