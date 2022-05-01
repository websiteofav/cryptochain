import 'package:cryptochain/theme/theme_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:provider/provider.dart';

class CustomNavBar extends StatelessWidget {
  final ValueChanged<int> onTap;
  final int currentTabIndex;

  CustomNavBar({required this.onTap, required this.currentTabIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: Provider.of<ThemeNotifier>(context)
          .decorationThemeCustom
          .boxDecoration1,
      child: BottomNavigationBar(
        selectedItemColor: Provider.of<ThemeNotifier>(context)
            .themeColorCustom
            .selectedItemColor, //Colors.white,
        unselectedItemColor: Colors.white,
        onTap: onTap,
        backgroundColor: Colors.transparent,
        //if item is selected show icon font size as 27
        selectedIconTheme: IconThemeData(
            size: 27,
            color: Provider.of<ThemeNotifier>(context)
                .themeColorCustom
                .selectedItemColor),
        // if icon is unselected show icon size as 18
        unselectedIconTheme: const IconThemeData(
            size: 18, color: Color.fromARGB(255, 245, 243, 243)),
        type: BottomNavigationBarType.fixed,
        iconSize: 20,
        currentIndex: currentTabIndex,
        items: _navBarsItems(),
      ),
    );
  }

  List<BottomNavigationBarItem> _navBarsItems() {
    return [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: "Home",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.list_alt),
        label: 'Prices',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.search),
        label: 'Portfolio',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.menu_book_rounded),
        label: 'My Account',
      ),
    ];
  }
}
