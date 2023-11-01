// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:my_instagram/Mypages/util/Tab1.dart';
import 'package:my_instagram/Mypages/util/Tab2.dart';
import 'package:my_instagram/Mypages/util/Tab3.dart';
import 'package:my_instagram/Mypages/util/Tab4.dart';

import 'package:my_instagram/Mypages/util/bubbles.dart';

class ProfileButton extends StatelessWidget {
  const ProfileButton({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // This is the profile picture
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.grey[300], shape: BoxShape.circle),
                    ),

                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text(
                                " 100",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22),
                              ),
                              Text(
                                "Posts",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "  4000",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text("  Followers",
                                  style: TextStyle(color: Colors.white)),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "6050",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text("  Following",
                                  style: TextStyle(color: Colors.white))
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 200),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Mr techSol",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    Text("Smart-Phone Software Egineer",
                        style: TextStyle(color: Colors.white)),
                    Text("Lagos, Nigeria",
                        style: TextStyle(color: Colors.white))
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Center(
                  child: Text('Professional Dashboard',
                      style: TextStyle(color: Colors.white)),
                ),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5)),
              ),
              Row(
                children: [
                  SizedBox(width: 40),
                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Expanded(
                      child: Container(
                        child: Center(
                          child: Text('Edit Profile',
                              style: TextStyle(color: Colors.white)),
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                  ),
                  SizedBox(width: 150),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Expanded(
                      child: Container(
                        child: Center(
                          child: Text('Share Profile',
                              style: TextStyle(color: Colors.white)),
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                child: Row(
                  children: [
                    BubbleStories(text: "2022 highlights"),
                    BubbleStories(text: "Tourism 21"),
                    BubbleStories(text: " Me & Mine"),
                    BubbleStories(text: "Work"),
                  ],
                ),
              ),
              TabBar(tabs: [
                Tab(icon: Icon(Icons.grid_3x3_outlined)),
                Tab(icon: Icon(Icons.video_call_outlined)),
                Tab(icon: Icon(Icons.shop)),
                Tab(icon: Icon(Icons.person)),
              ]),
              Expanded(
                  child: TabBarView(
                children: [
                  Tab1(),
                  Tab2(),
                  Tab3(),
                  Tab4(),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
