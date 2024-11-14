import 'package:chat_app/core/Widgets/fav_contacts.dart';
import 'package:chat_app/core/Widgets/info_lst_msg.dart';
import 'package:chat_app/core/utils/colors.dart';
import 'package:flutter/material.dart';

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
      body: const Column(
        children: [
          FavContacts(),
          MssageInfo(
              image: 'assets/image1.jpg',
              lstmsg: 'How are you',
              name: ' Haydi khattab',
              time: '12:00 pm')
        ],
      ),
    );
  }
}
