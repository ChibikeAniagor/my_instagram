// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class reelsButton extends StatefulWidget {
  const reelsButton({super.key});

  @override
  State<reelsButton> createState() => _reelsButtonState();
}

class _reelsButtonState extends State<reelsButton> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.black,
            body: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Reels",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white,
                            size: 35,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.photo_camera,
                            color: Colors.white,
                            size: 30,
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 400,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.favorite,
                        color: Colors.white,
                        size: 30,
                      ),
                      Text(
                        "3.8M",
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                      SizedBox(height: 10)
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.comment,
                        color: Colors.white,
                        size: 30,
                      ),
                      Text(
                        "9221",
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                      SizedBox(height: 10)
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 30,
                      ),
                      Text(
                        "5005",
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                      SizedBox(height: 30)
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.grey),
                          ),
                          Text(
                            " Mary2134",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 10),
                          Container(
                            height: 30,
                            child: Center(
                              child: Text(' follow ',
                                  style: TextStyle(
                                    color: Colors.white,
                                  )),
                            ),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ],
                      ),
                      SizedBox(height: 19),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Be so excited(these are not my feet) hahahahaha...",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.more_vert_outlined,
                            color: Colors.white,
                          )
                        ],
                      )
                    ],
                  ),
                ])));
  }
}
