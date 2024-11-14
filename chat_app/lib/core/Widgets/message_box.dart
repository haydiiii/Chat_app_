import 'package:chat_app/core/utils/colors.dart';
import 'package:flutter/material.dart';

class MessageBox extends StatelessWidget {
  const MessageBox({
    super.key, required this.message,
  });
  final String message;

  @override
  Widget build(BuildContext context) {
    return Container(
      //alignment: Alignment.centerLeft,
      margin: const EdgeInsets.only(left: 10, right: 10, top: 20),
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
          color: AppColor.secondry,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
              topRight: Radius.circular(30))),
      child: const Text('hii how are you'),
    );
  }
}
