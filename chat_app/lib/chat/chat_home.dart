import 'dart:ui';

import 'package:chat_app/Widgets/message_box.dart';
import 'package:chat_app/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class ChatHome extends StatefulWidget {
  const ChatHome({super.key});

  @override
  State<ChatHome> createState() => _ChatHomeState();
}

class _ChatHomeState extends State<ChatHome> {
  final List<String> messages = [
    "Message 1",
    "Message 2",
    "Message 3",
    "Message 4",
  ];

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
          'HAYDI',
          style: TextStyle(color: AppColor.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text('10:10 pm'),
              Expanded(
                child: ListView.builder(
                  itemCount: messages.length,
                  itemBuilder: (context, index) {
                    return MessageBox(message: messages[index]);
                  },
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      maxLines: 7,
                      minLines: 1,
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.send,
                            color: AppColor.primary,
                          ),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 15),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(30)),
                        fillColor: const Color.fromARGB(255, 217, 212, 212),
                        filled: true,
                        hintText: 'Type your message here',
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
