import 'package:chat_app/Widgets/user_model.dart';
import 'package:chat_app/colors.dart';
import 'package:flutter/material.dart';

class Fav_Contacts extends StatelessWidget {
  const Fav_Contacts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Favourite Contacts',
            style: TextStyle(
                color: AppColor.white,
                fontSize: 17,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 7,
          ),
          SizedBox(
            height: 100,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: AppColor.grey,
                        backgroundImage: AssetImage(users[index].image),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        users[index].name.split(' ').first,
                        style: TextStyle(
                            color: AppColor.white,
                            fontSize: 11,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: 10,
                  );
                },
                itemCount: users.length),
          ),
        ],
      ),
    );
  }
}
