import 'package:chatapp/Widgets/widgets.dart';
import 'package:chatapp/data_theme.dart';
import 'package:chatapp/ecrans/chat_page.dart';
import 'package:chatapp/ecrans/profilePage.dart';
import 'package:chatapp/models/message_model.dart';
import 'package:chatapp/pages/profilePage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
        title: Text(
          'Chatty',
          style: MyTheme.kAppTitle,
        ),
        actions: [
          PopupMenuButton<MenuItem>(
              onSelected: (item1) => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  )),
              padding: EdgeInsets.all(0),
              color: Theme.of(context).appBarTheme.backgroundColor,
              itemBuilder: (context) => [
                    PopupMenuItem(
                      height: 70,
                      value: MenuItem.item1,
                      child: Container(
                        width: 200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.account_circle,
                              color: Colors.black,
                              size: 40,
                            ),
                            Text(
                              'My account',
                              style: GoogleFonts.poppins(fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ),
                    PopupMenuItem(
                      height: 70,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.logout_outlined,
                            color: Colors.black,
                            size: 40,
                          ),
                          SizedBox(
                            width: 18,
                          ),
                          Text(
                            'Log Out',
                            style: GoogleFonts.poppins(fontSize: 18),
                          ),
                          SizedBox(
                            width: 72,
                          )
                        ],
                      ),
                      value: MenuItem.item2,
                    ),
                  ])
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
                                      Text(allChat.time,
                                          style: MyTheme.bodyText1),
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
                                    const SizedBox(
                                      height: 10,
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
        backgroundColor: MyTheme.kAccentColor,
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

enum MenuItem {
  item1,
  item2,
}
