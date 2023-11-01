// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class UserPost extends StatelessWidget {
  final String name;
  UserPost({required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //profile photo
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.grey[300], shape: BoxShape.circle),
                    ),
                    SizedBox(
                      width: 10,
                    ), //name
                    Text(
                      name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ],
                ),
                Icon(
                  Icons.more_vert_outlined,
                  color: Colors.white,
                ),
              ],
            ),
          ), // This is the post
          Container(
            height: 400,
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Icon(
                        Icons.chat_bubble_outline,
                        color: Colors.white,
                      ),
                    ),
                    Icon(
                      Icons.share,
                      color: Colors.white,
                    ),
                  ],
                ),
                Icon(
                  Icons.bookmark,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14),
            child: Row(
              children: [
                Text(
                  "Liked by ",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "Odomodu",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                Text(
                  " and",
                  style: TextStyle(color: Colors.white),
                ),
                Text(" Others",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white))
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 0, right: 9, top: 5),
            child: RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                      text: " Amera",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  TextSpan(
                      text: " Omo local man cannot can!! God don help us sha",
                      style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
