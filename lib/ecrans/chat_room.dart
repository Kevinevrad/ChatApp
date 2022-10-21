import 'package:chatapp/data_theme.dart';
import 'package:flutter/material.dart';
import '../Widgets/buildchat.dart';
import '../Widgets/conversation_chat.dart';
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
        toolbarHeight: 80,
        centerTitle: false,
        title: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(widget.user.avatar),
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              children: [
                Text(
                  widget.user.name,
                  style: MyTheme.chatSenderName,
                ),
                Text('online', style: MyTheme.bodyText2.copyWith(fontSize: 14)),
              ],
            ),
          ],
        ),
        actions: [
          Container(
            child: Icon(
              Icons.call,
              size: 21,
            ),
          ),
        ],
        elevation: 0,
      ),
      
      backgroundColor: MyTheme.kPrimaryColor,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Column(
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
                  child: ConVersation(
                    widget: widget,
                    user: currentUser,
                  ),
                ),
              ),
            ),
            buildChat(),
          ],
        ),
      ),
    );
  }
}
