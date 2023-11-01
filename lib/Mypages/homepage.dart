import 'package:flutter/material.dart';
import 'package:my_instagram/Mypages/util/Users_post.dart';
import 'package:my_instagram/Mypages/util/bubbles.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List people = [
    "Odomodu",
    "Dubem",
    "Olumide",
    "Isiaki",
    "Wahala",
    "Pst Balablu"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 0, bottom: 10, left: 0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Instagram",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Billabong",
                          fontSize: 36),
                    ),
                    // SingleChildScrollView(
                    //   child: Padding(
                    //     padding: const EdgeInsets.only(top: 70),
                    //     child: Row(
                    //       children: [
                    //         Container(
                    //           child: CircleAvatar(
                    //               maxRadius: 40,
                    //               child: Image.network(
                    //                 "https://images.pexels.com/photos/7704462/pexels-photo-7704462.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                    //               )),
                    //         ),
                    //         SizedBox(
                    //           width: 20,
                    //         ),
                    //         CircleAvatar(
                    //             maxRadius: 40,
                    //             child: Image.network(
                    //               "https://images.pexels.com/photos/7704462/pexels-photo-7704462.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                    //             )),
                    //         SizedBox(width: 20),
                    //         CircleAvatar(
                    //             maxRadius: 40,
                    //             child: Image.network(
                    //               "https://images.pexels.com/photos/7704462/pexels-photo-7704462.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                    //             )),
                    //         SizedBox(width: 20),
                    //         CircleAvatar(
                    //             maxRadius: 40,
                    //             child: Image.network(
                    //               "https://images.pexels.com/photos/7704462/pexels-photo-7704462.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                    //             )),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    /*DropdownButton<String>(
                      onChanged: (String? newValue) {
                        setState(() {});
                        dropDownValue = newValue!;
                      },
                      value: dropDownValue,
                      icon: Icon(Icons.arrow_downward),
                      style: TextStyle(color: Colors.white),
                      items: [
                        DropdownMenuItem<String>(
                          child: Text('Following '),
                          value: dropDownValue,
                        )
                      ],
                    )*/
                  ],
                ),
              ],
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10, right: 20),
            child: Image.asset(
              "assets/images/fav_icon.png",
              width: 26,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10, right: 10),
            child: Image.asset(
              "assets/images/messenger_icon.png",
              width: 26,
            ),
          )
        ],
        toolbarHeight: 80,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.black,
            // you will change this back to black when you are done
            height: 130,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return BubbleStories(text: people[index]);
                }),
          ),
          // initially it was just only this=> UserPost(name: "Tunde"), for a single screen list before we then created a list builder
          Expanded(
            child: ListView.builder(
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return UserPost(name: people[index]);
                }),
          )
        ],
      ),
    );
  }
}
