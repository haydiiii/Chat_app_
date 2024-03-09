import 'package:chat_app/chat/chat_home.dart';
import 'package:flutter/material.dart';

class UserInfo {
  final String name;
  final String image;
  final String lstmsg;
  final String time;
  final Function(BuildContext) ontap;
  bool isPressed = false;

  UserInfo(
      {required this.name,
      required this.image,
      required this.lstmsg,
      required this.time,
      required this.ontap});
}

List<UserInfo> users = [
  UserInfo(
      name: 'haydi Khattab  ',
      image: 'assets/image1.jpg',
      lstmsg: 'How are you',
      time: '12:00 pm',
      ontap: (context) {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => ChatHome()),
        );
      }),
  UserInfo(
      name: 'Kholoud khattab',
      image: 'assets/image2.jpg',
      lstmsg: 'hello Kholoud ',
      time: '11:00pm',
      ontap: (context) {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => ChatHome()),
        );
      }),
  UserInfo(
      name: 'Aisha khaled',
      image: 'assets/3.jpg',
      lstmsg: 'عاملة إيه',
      time: '1:50 pm',
      ontap: (context) {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => ChatHome()),
        );
      }),
  UserInfo(
      name: 'Ahmed Mahmoud',
      image: 'assets/Sticker.jpg',
      lstmsg: 'انتي فين',
      time: '5:20 am',
      ontap: (context) {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => ChatHome()),
        );
      }),
  UserInfo(
      name: 'Kholoud Mohammed',
      image: 'assets/image2.jpg',
      lstmsg: 'hello Kholoud ',
      time: '11:00pm',
      ontap: (context) {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => ChatHome()),
        );
      }),
  UserInfo(
      name: 'Aisha mohammed',
      image: 'assets/3.jpg',
      lstmsg: 'عاملة إيه',
      time: '1:50 pm',
      ontap: (context) {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => ChatHome()),
        );
      }),
  UserInfo(
      name: 'haydi Belal',
      image: 'assets/image1.jpg',
      lstmsg: 'How are you',
      time: '12:00 pm',
      ontap: (context) {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => ChatHome()),
        );
      }),
];
