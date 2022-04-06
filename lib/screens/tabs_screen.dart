import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


import 'package:gojek_clone/screens/chat_page.dart';
import 'package:gojek_clone/screens/home_page.dart';
import 'package:gojek_clone/screens/orders.dart';
import 'package:gojek_clone/screens/promo_page.dart';


import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';


class TabsScreen extends StatefulWidget {
  static const routeName = '/tabs_screen';

  const TabsScreen({Key? key}) : super(key: key);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final PersistentTabController? _controller =
      PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreens() {
    return [HomePage(), PromoPage(), OrderPage(), ChatPage()];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
          icon: const Icon(CupertinoIcons.house_fill),
          title: ("Home"),
          activeColorPrimary: CupertinoColors.systemGreen,
          inactiveColorPrimary: CupertinoColors.systemGrey,
          textStyle:
              const TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
      PersistentBottomNavBarItem(
          icon: const Icon(CupertinoIcons.percent),
          title: ("Promos"),
          activeColorPrimary: CupertinoColors.systemGreen,
          inactiveColorPrimary: CupertinoColors.systemGrey,
          textStyle:
              const TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
      PersistentBottomNavBarItem(
          icon: const Icon(CupertinoIcons.square_list_fill),
          title: ("Orders"),
          activeColorPrimary: CupertinoColors.systemGreen,
          inactiveColorPrimary: CupertinoColors.systemGrey,
          textStyle:
              const TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
      PersistentBottomNavBarItem(
          icon: const Icon(CupertinoIcons.chat_bubble_fill),
          title: ("Chat"),
          activeColorPrimary: CupertinoColors.systemGreen,
          inactiveColorPrimary: CupertinoColors.systemGrey,
          textStyle:
              const TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      navBarStyle: NavBarStyle.style6,
      items: _navBarsItems(),
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      popActionScreens: PopActionScreensType.all,
      popAllScreensOnTapOfSelectedTab: true,
    );
  }
}
