import 'package:chatapp/Widgets/widgets.dart';
import 'package:chatapp/data_theme.dart';
import 'package:chatapp/ecrans/chat_page.dart';
import 'package:chatapp/models/message_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
        title: Text(
          'Chatty',
          style: MyTheme.kAppTitle,
        ),
        actions: [
          PopupMenuButton<MenuItem>(
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
                  ? Icons.phone
                  : Icons.contact_phone_outlined,
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
