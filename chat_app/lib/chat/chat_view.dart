import 'package:chat_app/Widgets/fav_contacts.dart';
import 'package:chat_app/Widgets/info_lst_msg.dart';
import 'package:chat_app/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary,
      appBar: AppBar(
        backgroundColor: AppColor.primary,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
              color: AppColor.white,
            ),
          )
        ],
        title: Text(
          'Chats',
          style: TextStyle(
              color: AppColor.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Fav_Contacts(),
          info_msg(
            image: 'assets/image1.jpg',
            lstmsg: 'How are you',
            name: ' Haydi khattab',
            time: '12:00 pm' 
          )
        ],
      ),
    );
  }
}
