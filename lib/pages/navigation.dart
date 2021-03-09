import 'package:flutter/material.dart';
import 'package:martapp/pages/account.dart';
import 'package:martapp/pages/cart.dart';
import 'package:martapp/pages/categories.dart';
import 'package:martapp/pages/home.dart';

class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int currentTabIndex = 0;
  TextStyle style = TextStyle(color: Colors.blueGrey);
  // List<Widget> tabs = [
  //   Home(),
  //   Categories(),
  //   Cart(),
  //   Account(),
  // ];
  onTapped(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }

  Color iconColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      body: currentTabIndex == 0
          ? Home(GlobalKey<ScaffoldState>())
          : currentTabIndex == 1
              ? Categories()
              : currentTabIndex == 2
                  ? CartPage([])
                  : Account(),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blueGrey,
        onTap: onTapped,
        selectedLabelStyle: style.copyWith(fontSize: 14),
        currentIndex: currentTabIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: iconColor,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_outlined, color: iconColor),
            label: 'Category',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                color: iconColor,
              ),
              label: 'Cart'),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: iconColor,
            ),
            label: 'Home',
          ),
        ],
      ),
    );
  }
}
