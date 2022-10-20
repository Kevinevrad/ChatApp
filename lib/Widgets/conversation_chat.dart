import 'package:chatapp/models/message_model.dart';
import 'package:flutter/material.dart';

import '../data_theme.dart';
import '../ecrans/chat_room.dart';
import '../models/user_model.dart';

class ConVersation extends StatelessWidget {
  const ConVersation({
    Key? key, required this.user, required ChatRoom widget,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      reverse: true,
      itemCount: messages.length,
      itemBuilder: ((context, int index) {
        final message = messages[index];
        bool isMe = message.sender.id == currentUser.id;
        return Container(
          margin: EdgeInsets.only(top: 9),
          child: Column(
            children: [
              Row(
                mainAxisAlignment:
                    isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  if (!isMe)
                    CircleAvatar(
                      radius: 15,
                      backgroundImage: AssetImage(user.avatar),
                    ),
                  Container(
                    padding: EdgeInsets.all(10),
                    constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * 0.6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                        bottomLeft: Radius.circular(isMe ? 12 : 0),
                        bottomRight: Radius.circular(isMe ? 0 : 12),
                      ),
                      color: isMe ? MyTheme.kAccentColor : Colors.grey[200],
                    ),
                    child: Text(messages[index].text,
                        style: MyTheme.bodyTextMessage.copyWith(
                            color: isMe ? Colors.white : Colors.grey[600])),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Row(
                  mainAxisAlignment:
                      isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
                  children: [
                    if (!isMe)
                      SizedBox(
                        width: 40,
                      ),
                    Icon(
                      Icons.done_all,
                      size: 20,
                      color: MyTheme.bodyTextTime.color,
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    Text(
                      message.time,
                      style: MyTheme.bodyTextTime,
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
