import 'package:chatapp/ecrans/chat_room.dart';
import 'package:flutter/material.dart';

import '../data_theme.dart';
import '../models/message_model.dart';

class AllChats extends StatelessWidget {
  const AllChats({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(
            top: 10,
          ),
          child: Row(
            children: [
              Text(
                'All Message',
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
          itemCount: allChats.length,
          itemBuilder: ((context, int index) {
            final allChat = allChats[index];
            return Container(
                margin: const EdgeInsets.only(top: 25),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 27,
                      backgroundImage: AssetImage(allChat.avatar),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ChatRoom(user: allChat.sender);
                          },
                        ));
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            allChat.sender.name,
                            style: MyTheme.heading2.copyWith(fontSize: 15),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(allChat.text, style: MyTheme.bodyText1),
                        ],
                      ),
                    ),
                    Spacer(),
                    Column(
                      children: [
                        allChat.unreadCount == 0
                            ? Icon(
                                Icons.done_all,
                                color: MyTheme.bodyTextTime.color,
                              )
                            : CircleAvatar(
                                radius: 8,
                                backgroundColor: MyTheme.kUnreadChatBG,
                                child: Text(
                                  allChat.unreadCount.toString(),
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          allChat.time,
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
