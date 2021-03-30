import 'package:eco1/view/favorite_screen.dart';
import 'package:eco1/view/profile.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'card_screen.dart';
import 'home_screen.dart';

class controller_view extends StatefulWidget {
  @override
  _controller_viewState createState() => _controller_viewState();
}

class _controller_viewState extends State<controller_view> {
  int currendindex = 0;
  List<Widget> _list = [
    home_screen(),
    card_screen(),
    favorite_screen(),
    profile_screen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: FancyBottomNavigation(
        circleColor: Colors.green,
        inactiveIconColor: Colors.black,
        tabs: [
          TabData(iconData: Icons.home, title: "Home"),
          TabData(iconData: Icons.shopping_bag_outlined, title: "Card"),
          TabData(iconData: Icons.favorite_outline, title: "Favorite"),
          TabData(iconData: Icons.person, title: "Profile"),
        ],
        onTabChangedListener: (position) {
          setState(() {
            print(position);
            currendindex = position;
          });
        },
      ),
      body: _list.elementAt(currendindex),
    );
  }
}
