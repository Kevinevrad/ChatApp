import 'package:flutter/material.dart';
import '../Widgets/widgets.dart';
import '../Widgets/all_chatts.dart';
import '../Widgets/recent_chats.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          RecentChats(),
          AllChats(),
        ],
      ),
    );
  }
}
