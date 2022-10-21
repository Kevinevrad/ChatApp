import 'package:chatapp/Widgets/widgets.dart';
import 'package:chatapp/data_theme.dart';
import 'package:chatapp/ecrans/chat_page.dart';
import 'package:chatapp/ecrans/setting.dart';
import 'package:chatapp/models/message_model.dart';
import 'package:flutter/material.dart';
import '../Widgets/mt_tab_bar.dart';
import 'chat_room.dart';

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
      (currentTableIndex);
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
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => SettingChat()));
          },
          icon: Icon(Icons.person),
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
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Column(
                        children: [],
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
                                  onTap: () {},
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        allChat.sender.name,
                                        style: MyTheme.heading2
                                            .copyWith(fontSize: 15),
                                      ),
                                      Text(
                                        allChat.time,
                                        style: MyTheme.bodyTextTime
                                            .copyWith(fontSize: 9),
                                      )
                                    ],
                                  ),
                                ),
                                const Spacer(),
                                const Icon(
                                  Icons.phone,
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  children: [
                                    allChat.unreadCount == 5
                                        ? CircleAvatar(
                                            radius: 8,
                                            backgroundColor:
                                                MyTheme.kUnreadChatBG,
                                            child: Text(
                                              allChat.unreadCount.toString(),
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          )
                                        : CircleAvatar(
                                            radius: 8,
                                            backgroundColor:
                                                MyTheme.kUnreadChatBG,
                                            child: Text(
                                              allChat.unreadCount.toString(),
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                  ],
                                ),
                              ],
                            ));
                      }),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      child: Column(
                        children: [],
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
                                  backgroundImage:
                                      AssetImage(recentChats[index].avatar),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        recentChat.sender.name,
                                        style: MyTheme.heading2
                                            .copyWith(fontSize: 15),
                                      ),
                                    ],
                                  ),
                                ),
                                const Spacer(),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        IconButton(
                                          onPressed: (() {
                                            {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (BuildContext
                                                              context) =>
                                                          ChatRoom(
                                                            user: recentChat
                                                                .sender,
                                                          )));
                                            }
                                          }),
                                          icon: Icon(Icons.message),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),
                              ],
                            ));
                      }),
                    ),
                  ],
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
                  ? Icons.phone
                  : Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
