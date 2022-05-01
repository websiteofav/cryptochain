import 'dart:collection';

import 'package:cryptochain/account/account.dart';
import 'package:cryptochain/bottom_bar/custom_nav_bar.dart';
import 'package:cryptochain/homepage/screens/homepage.dart';
import 'package:cryptochain/portfolio/portfolio.dart';
import 'package:cryptochain/prices/prices.dart';
import 'package:flutter/material.dart';

class MyHomePageClass {
  static _BottomBarState? homePageRef;
}

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentTabIndex = 0;
  final PageStorageBucket bucket = PageStorageBucket();

  onTapped(int index) {
    _navigationQueue.addLast(index);

    setState(() {
      currentTabIndex = index;
    });
  }

  late List<Widget> tabs;

  final ListQueue<int> _navigationQueue = ListQueue();
  void initState() {
    tabs = [
      HomePage(
          // context: widget.menuScreenContext,
          ),
//      WatchListScreen(
//          // context: widget.menuScreenContext,
//          ), //(key: PageStorageKey<String>('home'),),
//

      Prices(),
      Portfolio(),
      Account(),
    ];
    // currentTabIndex = widget.baseIndex ?? 0;
    currentTabIndex = 0;

    _navigationQueue.addLast(0);
    MyHomePageClass.homePageRef = this;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: WillPopScope(
        onWillPop: () {
          // if (currentTabIndex == 0) {
          //   appStateAlert(context);

          //   return Future<bool>.value(true);
          // } else {
          setState(() {
            currentTabIndex = _navigationQueue.last;
            _navigationQueue.removeLast();
          });
          return Future<bool>.value(false);
        },
        child: PageStorage(
            bucket: bucket,
            child: //tabs[currentTabIndex]
                IndexedStack(
              //index state has issue of rebuilding widget
              index: currentTabIndex,
              children: tabs,
            )),
      ),
      bottomNavigationBar: CustomNavBar(
        onTap: onTapped,
        currentTabIndex: currentTabIndex,
      ),
    );
  }
}
