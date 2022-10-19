import 'package:chatapp/data_theme.dart';
import 'package:flutter/material.dart';
import '../models/user_model.dart';
import '../models/message_model.dart';

class ChatRoom extends StatefulWidget {
  const ChatRoom({super.key, required this.user});

  @override
  State<ChatRoom> createState() => _ChatRoomState();
  final User user;
}

class _ChatRoomState extends State<ChatRoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        centerTitle: false,
        title: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(widget.user.avatar),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              children: [
                Text(
                  widget.user.name,
                  style: MyTheme.chatSenderName,
                ),
                Text('online', style: MyTheme.bodyText1.copyWith(fontSize: 18))
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.call,
              size: 28,
            ),
          )
        ],
      ),
      backgroundColor: MyTheme.kPrimaryColor,
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              child: ClipRRect(
                child: ListView.builder(
                  itemCount: messages.length,
                  itemBuilder: ((context, int index) {
                    final message = messages[index];
                    bool isMe = message.sender.id == currentUser.id;
                    return Container(
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 15,
                           backgroundImage: AssetImage(widget.user.avatar),
                          ),
                          Container(
                            
                            color: MyTheme.kAccentColor,
                            
                            child: Text(messages[index].text)),
                        ],
                      ),
                    );
                  }),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
