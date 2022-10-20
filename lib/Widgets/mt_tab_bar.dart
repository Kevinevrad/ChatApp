import 'package:flutter/material.dart';
import '../data_theme.dart';

class MyTabBar extends StatelessWidget {
  const MyTabBar({
    Key? key,
    required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      height: 80,
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 16,
      ),
      color: MyTheme.kPrimaryColor,
      child: TabBar(
        controller: _tabController,
        indicator: ShapeDecoration(
          color: MyTheme.kAccentColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
        tabs: const [
          Tab(
            icon: Text(
              "Chat",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Tab(
            icon: Text(
              "Apples",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Tab(
            icon: Text(
              "Contact",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
