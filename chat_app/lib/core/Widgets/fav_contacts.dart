import 'package:chat_app/core/Widgets/user_model.dart';
import 'package:chat_app/core/utils/colors.dart';
import 'package:flutter/material.dart';

class FavContacts extends StatelessWidget {
  const FavContacts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
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
          const SizedBox(
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
                      const SizedBox(
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
                  return const SizedBox(
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
