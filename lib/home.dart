import 'package:chat_app/utils/colors.dart';

import 'package:chat_app/views/homePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;
  PageController _pageController = PageController();
  List<Widget> pages = [HomePage(), People(), Call(), Settings()];
  void _onChanged(index) {
    setState(() {
      selectedIndex = index;
    });
  }

  onItemTapped(int selectedIndex) {
    _pageController.jumpToPage(selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          physics: NeverScrollableScrollPhysics(),
          children: pages,
          controller: _pageController,
          onPageChanged: _onChanged,
        ),
        bottomNavigationBar: Container(
          color: bkgrdColor,
          child: BottomNavigationBar(
            elevation: 0,
            backgroundColor: bkgrdColor,
            unselectedItemColor: unSelectedIcon,
            selectedItemColor: selectedIcon,
            currentIndex: selectedIndex,
            onTap: onItemTapped,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    MaterialIcons.home,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(FlutterIcons.circle_double_mco), label: ""),
              BottomNavigationBarItem(icon: Icon(Ionicons.ios_call), label: ""),
              BottomNavigationBarItem(
                  icon: Icon(Ionicons.md_settings), label: ""),
            ],
          ),
        ));
  }
}
