import 'package:chat_app/Widgets/box_input_msg.dart';
import 'package:chat_app/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChatHome extends StatefulWidget {
  const ChatHome({super.key});

  @override
  State<ChatHome> createState() => _ChatHomeState();
}

class _ChatHomeState extends State<ChatHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary,
      appBar: AppBar(
        backgroundColor: AppColor.primary,
        actions: [
          Icon(
            Icons.more_vert_rounded,
            color: AppColor.white,
          )
        ],
        title: Text(
          'Chat Home',
          style: TextStyle(color: AppColor.white),
        ),
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/3.jpg'),
          ),
          Center(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
              Text(
                '10:00 pm',
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10, top: 20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: AppColor.secondry,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30))),
                child: Text('hii how are you'),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10, top: 20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: AppColor.secondry,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30))),
                child: Text('hii how are you'),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
