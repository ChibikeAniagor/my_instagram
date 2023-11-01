// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:my_instagram/Mypages/add_button.dart';
import 'package:my_instagram/Mypages/homepage.dart';
import 'package:my_instagram/Mypages/profile_button.dart';
import 'package:my_instagram/Mypages/reels_button.dart';
import 'package:my_instagram/Mypages/search_button.dart';

class ButtomNavbar extends StatefulWidget {
  const ButtomNavbar({super.key});

  @override
  State<ButtomNavbar> createState() => _ButtomNavbarState();
}

class _ButtomNavbarState extends State<ButtomNavbar> {
  List<Widget> pages = [
    HomePage(),
    SearchButton(),
    addButton(),
    reelsButton(),
    ProfileButton(),
  ];
// This function is to naviagte around the buttom nav bar
  int _SelectedIndex = 0;
  void _navigateBottomNavBar(int index) {
    setState(() {
      _SelectedIndex = index;
    });
  }

// This function is for the different pages to navigate to
  final List<Widget> _children = [
    HomePage(),
    SearchButton(),
    addButton(),
    reelsButton(),
    ProfileButton(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_SelectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        fixedColor: Colors.white,
        currentIndex: _SelectedIndex,
        onTap: _navigateBottomNavBar,
        items: [
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.video_call,
              color: Colors.white,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.person,
              color: Colors.white,
            ),
          ),
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
