import 'package:flutter/material.dart';
import 'package:untitled5/common_component/custom_text.dart';
import 'package:untitled5/common_component/custom_text_field.dart';
import 'package:untitled5/core/router/router.dart';
import 'package:untitled5/features/consultant_cycle/chat_screen/componentss/message_container.dart';
import 'package:untitled5/public/style.dart';

class ChatScreenViews extends StatelessWidget {
  const ChatScreenViews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => MagicRouter.pop(),
          icon: Icon(
            Icons.arrow_back_ios,
            size: 22,
            color: colorPrimary,
          ),
        ),
        title: Row(
          children: [
            Image.asset('assets/images/ProfilePic.png', height: 45),
            const SizedBox(
              width: 8,
            ),
            const CustomText(
              text: 'Merna Mohamed',
              fontWeight: FontWeight.w600,
              fontSize: 17,
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/ProfilePic.png',
                  height: 60,
                  width: 60,
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MessageContainer(
                        message:
                            'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      MessageContainer(
                        message: 'Lorem ipsum',
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  MessageContainer(
                    myMessage: true,
                    message:
                        'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  MessageContainer(
                    message: 'Lorem ipsum',
                    myMessage: true,
                  )
                ],
              ),
            ),
          ),
          Container(
            color: Colors.grey.shade200,
            padding: EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 8
            ),
            child: Row(
              children: [
                Image.asset('assets/images/send.png',height:25 ),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(35.0),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 3),
                            blurRadius: 5,
                            color: Colors.grey)
                      ],
                    ),
                    child: Row(
                      children: [
                        IconButton(
                            icon: Icon(
                              Icons.face,
                              color: colorGrey,
                            ),
                            onPressed: () {}),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Type here...",
                                hintStyle: TextStyle(color: colorGrey,),
                                border: InputBorder.none,

                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                InkWell(
                  child: Image.asset('assets/images/upl.png'),
                  onTap: (){},
                ),
                SizedBox(width: 15),
                InkWell(
                  child: Image.asset('assets/images/photo.png'),
                  onLongPress: () {},
                ),
                SizedBox(width: 10),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: InkWell(
                    child: Image.asset('assets/images/MicroPhone.png'),
                    onLongPress: () {},
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
