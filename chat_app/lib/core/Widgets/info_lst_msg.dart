import 'package:chat_app/core/Widgets/user_model.dart';
import 'package:chat_app/features/chat/chat_home.dart';
import 'package:chat_app/core/utils/colors.dart';
import 'package:flutter/material.dart';

class MssageInfo extends StatelessWidget {
  const MssageInfo({
    super.key,
    required this.name,
    required this.image,
    required this.lstmsg,
    required this.time,
  });
  final String name;
  final String image;
  final String lstmsg;
  final String time;
  //bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const ChatHome()),
          );
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
              color: AppColor.white,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40))),
          child: ListView.separated(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: AppColor.grey,
                        backgroundImage: AssetImage(users[index].image),
                      ),
                      const SizedBox(
                        width: 1,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              users[index].name,
                              style: const TextStyle(
                                  color: AppColor.primary,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              users[index].lstmsg,
                              style: TextStyle(
                                  color: AppColor.grey,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      Text(
                        users[index].time,
                        style: TextStyle(color: AppColor.grey),
                      )
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const Divider(
                  endIndent: 15,
                  indent: 15,
                );
              },
              itemCount: users.length),
        ),
      ),
    );
  }
}
