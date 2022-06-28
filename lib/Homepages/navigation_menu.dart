import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:tunesevenui/Homepages/hompageartists.dart';
import 'package:tunesevenui/Homepages/store.dart';
import 'package:tunesevenui/screen/Main%20Page/Main Artist.dart';


import '../screen/Main Page/your library.dart';
import 'home_page.dart';


class NavMenu extends StatefulWidget {
  const NavMenu({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<NavMenu> createState() => _NavMenuState();
}

class _NavMenuState extends State<NavMenu> {
  int _selectedIndex = 1;
  List<Widget> _listPages = [
    HomePage(),
    Store(),
    yourlibrary(),
    artist(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _listPages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: GNav(
        tabs: [
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            icon: Icons.store,
            text: 'Store',
          ),
          GButton(
            icon: Icons.stacked_bar_chart,
            text: 'Library',
          ),
          GButton(
            icon: Icons.account_circle,
            text: 'Artist',
          )
        ],
        gap: 6,
          tabBorder: Border.all(color: Colors.black, width: 0),
        activeColor: Colors.white,
        tabBorderRadius: 80,
        tabActiveBorder: Border.all(color: Colors.white, width: 0.5), // tab button border
        color: Colors.white,
        backgroundColor: Colors.black,
        tabBackgroundColor: Colors.black,
        selectedIndex: _selectedIndex,
        onTabChange: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
