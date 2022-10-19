import 'package:chatapp/ecrans/ecrans.dart';
import 'package:chatapp/models/user_model.dart';
import 'package:flutter/material.dart';

import '../data_theme.dart';
import '../models/message_model.dart';

class RecentChats extends StatelessWidget {
  const RecentChats({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(
            top: 20,
          ),
          child: Row(
            children: [
              Text(
                'Recent Message',
                style: MyTheme.heading2,
              ),
              Spacer(),
              Icon(
                Icons.search,
                color: MyTheme.kPrimaryColor,
              ),
            ],
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: ScrollPhysics(),
          itemCount: recentChats.length,
          itemBuilder: ((context, int index) {
            final recentChat = recentChats[index];
            return Container(
                margin: const EdgeInsets.only(top: 25),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 27,
                      backgroundImage: AssetImage(recentChats[index].avatar),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => ChatRoom(
                                      user: recentChat.sender,
                                    )));
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            recentChat.sender.name,
                            style: MyTheme.heading2.copyWith(fontSize: 15),
                          ),
                          Text(recentChats[index].text,
                              style: MyTheme.bodyText1),
                        ],
                      ),
                    ),
                    Spacer(),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 8,
                          backgroundColor: MyTheme.kUnreadChatBG,
                          child: Text(
                            recentChat.unreadCount.toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          recentChat.time,
                          style: MyTheme.bodyTextTime,
                        ),
                      ],
                    ),
                  ],
                ));
          }),
        ),
      ],
    );
  }
}
