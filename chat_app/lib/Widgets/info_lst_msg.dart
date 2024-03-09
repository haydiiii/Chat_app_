import 'package:chat_app/Widgets/user_model.dart';
import 'package:chat_app/chat/chat_home.dart';
import 'package:chat_app/colors.dart';
import 'package:flutter/material.dart';

class info_msg extends StatelessWidget {
  const info_msg({
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
            MaterialPageRoute(builder: (context) => ChatHome()),
          );
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
              color: AppColor.white,
              borderRadius: BorderRadius.only(
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
                      SizedBox(
                        width: 1,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              users[index].name,
                              style: TextStyle(
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
                      Spacer(),
                      Text(
                        users[index].time,
                        style: TextStyle(color: AppColor.grey),
                      )
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return Divider(
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
