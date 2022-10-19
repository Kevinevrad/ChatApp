import 'package:chatapp/Widgets/widgets.dart';
import 'package:chatapp/data_theme.dart';
import 'package:chatapp/ecrans/chat_page.dart';
import 'package:chatapp/models/message_model.dart';
import 'package:flutter/material.dart';
import '../Widgets/mt_tab_bar.dart';
import '../Widgets/recent_chats.dart';
import '../models/user_model.dart';

class HomeChat extends StatefulWidget {
  const HomeChat({super.key});

  @override
  State<HomeChat> createState() => _HomeChatState();
}

class _HomeChatState extends State<HomeChat> with TickerProviderStateMixin {
  late TabController _tabController;
  int currentTableIndex = 0;

  void onTabChange() {
    setState(() {
      currentTableIndex = _tabController.index;
      print(currentTableIndex);
    });
  }

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);

    _tabController.addListener(() {
      onTabChange();
    });
    super.initState();
  }

  @override
  void dispose() {
    _tabController.addListener(() {
      onTabChange();
    });

    _tabController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
        title: Text(
          'Chatty',
          style: MyTheme.kAppTitle,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          )
        ],
      ),
      backgroundColor: MyTheme.kPrimaryColor,
      body: Column(
        children: [
          MyTabBar(tabController: _tabController),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              child: TabBarView(controller: _tabController, children: [
                ChatPage(),
                Center(
                  child: Text('Appel'),
                ),
                Center(
                  child: Text('Contact'),
                ),
              ]),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        onPressed: () {},
        child: Icon(
          currentTableIndex == 0
              ? Icons.message_outlined
              : currentTableIndex == 1
                  ? Icons.camera_alt
                  : Icons.contact_phone_outlined,
          color: Colors.white,
        ),
      ),
    );
  }
}
