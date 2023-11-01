// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class addButton extends StatefulWidget {
  const addButton({super.key});

  @override
  State<addButton> createState() => _addButtonState();
}

class _addButtonState extends State<addButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(Icons.close),
        title: Text("New post"),
        actions: [
          Icon(
            Icons.arrow_forward_outlined,
            color: Colors.blue,
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 400,
            // add width with media query to fit size of any screen ,

            color: Colors.grey[600],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'Recents',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    color: Colors.white,
                  ),
                ],
              ),
              Icon(
                Icons.photo_camera,
                color: Colors.white,
              )
            ],
          ),
          SizedBox(height: 220),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "POST",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Text(
                "  STORY",
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
              Text(
                "  REEL",
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
              Text(
                "  LIVE",
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    );
  }
}
