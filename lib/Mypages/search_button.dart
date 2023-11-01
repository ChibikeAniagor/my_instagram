// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_instagram/Mypages/util/ExploreGrid.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Container(
              color: Colors.grey[300],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Icon(
                        Icons.search,
                        color: Colors.grey[900],
                      ),
                    ),
                    Text(
                      "Search",
                      style: TextStyle(color: Colors.grey[900]),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        body: ExploreGrid(),
      ),
    );
  }
}
